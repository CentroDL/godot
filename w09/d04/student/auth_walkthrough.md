## Setup

To authenticate users we'll uncomment bcrypt from the Gemfile

```rb
# Gemfile
# Use ActiveModel has_secure_password
gem 'bcrypt', '~> 3.1.7'
```

Our users table will require a "password_digest" column

```rb
# db/migrate/TIMESTAMP_create_users.rb
class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :password_digest # bcrypt stores a digest not the password
      t.timestamps null: false
    end
  end
end
```

Our user model will have has_secure_password
```rb
# app/models/user.rb
# create_table "users", force: :cascade do |t|
#   t.string   "email"
#   t.datetime "created_at",      null: false
#   t.datetime "updated_at",      null: false
#   t.string   "password_digest"
# end

class User < ActiveRecord::Base
  # we get this method from bcrypt
  # and need to create a password_digest column
  has_secure_password
end
```

## Rendering the Login Form

```rb
# config/routes.rb
# Setup our three routes for handling sessions
  get    '/login' => 'sessions#new'
```

The login form isn't for a resource, just an email and password.

```erb
<!-- views/sessions/new.html.erb -->
  <h1>Login</h1>
  <%= form_tag '/login' do %>
    <%= text_field_tag :email %>
    <%= text_field_tag :password %>
  <% end %>
```

```rb
# app/controllers/sessions_controller.rb
class SessionsController < ApplicationController
  def new
    # render the login form
  end
```

![:image](img/session_new.png)

## Handling Session Create and Storing the User id
![:image](img/session_create.png)

```rb
# config/routes.rb
post   '/login' => 'sessions#create'
```

```rb
# app/controllers/sessions_controller.rb
class SessionsController < ApplicationController
  # ...
  def create
    user = User.find_by({email: params[:email]})
    # if we found a user with that email
    # and they provided the correct password
    # we get `authenticate` from adding bcrypt
    if user && user.authenticate(params[:password])
      # store their id in session
      session[:user_id] = user.id
      redirect_to user_path(user)
    else
      # rerender the form
      render :new
    end
  end
  # ...
end
```

## Deleting a Session and Logging Out
![:image](img/session_destroy.png)

```rb
# config/routes.rb
delete '/logout' => 'sessions#destroy'
```

```rb
# app/controllers/sessions_controller.rb
class SessionsController < ApplicationController
  # ...
  def destroy
    # remove the user_id from session
    session[:user_id] = nil
    redirect_to '/login'
  end
  # ...
end
```

We create three routes to handle showing a login form, handling creating a session and destroying a session.

```rb
# config/routes.rb
# Setup our three routes for handling sessions
  get    '/login' => 'sessions#new'
  post   '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'
```

The login form isn't for a resource, just an email and password.

```erb
<!-- views/sessions/new.html.erb -->
  <h1>Login</h1>
  <%= form_tag '/login' do %>
    <%= text_field_tag :email %>
    <%= text_field_tag :password %>
  <% end %>
```

Our three actions in the Controller

```rb
# app/controllers/sessions_controller.rb
class SessionsController < ApplicationController
  def new
    # render the login form
  end
  
  def create
    user = User.find_by({email: params[:email]})
    # if we found a user with that email
    # and they provided the correct password
    if user && user.authenticate(params[:password])
      # store their id in session
      session[:user_id] = user.id
      redirect_to user_path(user)
    else
      # rerender the form
      render :new
    end
  end
  
  def destroy
    # remove the user_id from session
    session[:user_id] = nil
    redirect_to '/login'
  end
end
```

## Looking up and authorizing users

Once we have a user_id in session we can set up methods in our ApplicationController that we can access in the UsersController.

```rb
# app/controllers/application_controller.rb
class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  # We can call these methods from other controllers

  # set the current_user instance variable if we have a session
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  # This allows us to call curernt_user in our views
  helper_method :current_user

  # Allows us to check for a logged in user
  def authorize
    redirect_to '/login' unless current_user
  end
end
```
Our UsersController inherits everything above

```rb
# app/controllers/users_controller.rb
class UsersController < ApplicationController
  # This will call ApplicationController's authorize
  # unless we hit the create or new actions
  before_action :authorize, except: [:create, :new]
  def show
    # in our view we can access current_user
  end
end
```
