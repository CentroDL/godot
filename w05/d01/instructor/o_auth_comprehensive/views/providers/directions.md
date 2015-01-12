<!-- FIXME ensure the steps below work, are clear, and aren't unnecessary
      for example: can the redirect uris just be domains, sans port & path?
TODO  draw diagram of flow... -->

## Google

Register your app at Google by:

1. Logging in to developer console at ...
  - [https://console.developers.google.com/project](https://console.developers.google.com/project)
2. Add a project by clicking 'Create Project' and giving it the name ...
  - OAuth Test App.
3. Under "APIs & auth", choose "APIs" and ...
  - add the Google+ API to the list
4. Under "APIs & auth", choose "Credentials" and ...
  - create a new client ID, and
  - allow the redirect URIs:
     - http://localhost:9393/google/oauth_callback
     - http://localhost:9292/google/oauth_callback
     - http://localhost:4567/google/oauth_callback
5. Under "APIs & auth", choose "Consent screen" and ...
  - add the product name: OAuth Test App.
6. Add the env variables from the data under Credentials.


## GitHub

Register your app at GitHub by:

1. Logging in to GitHub and going to ...
  - [https://github.com/settings/applications/new](https://github.com/settings/applications/new)
2. Add the project details:
  - Application name:           OAuth Test App
  - Homepage URL:               http://localhost
  - Authorization callback URL: http://localhost/github/oauth_callback
3. Add the env variables from the given data.

## Facebook

Register your app at Facebook by:

1. Logging in to Facebook and going to ...
  - [https://developers.facebook.com/](https://developers.facebook.com/)
2. Choosing "Apps > Create New App" from the drop-down menu.
3. Input into the dialog ...
  - Display Name: OAuth Test App
  - Category:     Utilities
4. Choose "Settings > Basic" and ...
  - choose the "+ Add Platform" button
5. Add a Site URL of ...
  - http://localhost:9292/
6. Add the env variables from the given data.


## DropBox

Register your app at DropBox by:

1. Logging in to DropBox and going to ...
  - [https://www.dropbox.com/developers/apps](https://www.dropbox.com/developers/apps)
2. Choose "DropBox API App" and "datastores only".
3. Input into the dialog ...
  - "OAuth Test App [GH-user-name]" as the App Name.
4. Click "Create".
5. Add the redirect URI ...
  - http://localhost:9292/dropbox/oauth_callback
6. Add the env variables from app setup page.

## LinkedIn

Register your app at LinkedIn by:

1. Logging in to LinkedIn and going to ...
  - [https://www.linkedin.com/secure/developer](https://www.linkedin.com/secure/developer)
2. Click on "Add New Application" and enter into the page ...
  - Company name:     General Assembly
  - Application name: OAuth Test App
  - Description:      A simple testing app.
  - Website URL:      http://localhost
  - Application Use:  Other
  - Developer Contact Email: your email
  - Phone:            your phone
  - OAuth 2.0 Redirect URLs:
     - http://localhost:9292/linkedin/oauth_callback,
     - http://localhost:9393/linkedin/oauth_callback,
     - http://localhost:4567/linkedin/oauth_callback
3. Agree to the terms and press "Add Application."
4. Add env vars from the **API Key** and **Secret Key**, *NOT the OAuth User Token and OAuth User Secret!*
