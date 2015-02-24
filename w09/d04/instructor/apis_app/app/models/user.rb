class User < ActiveRecord::Base
  has_secure_password

  def self.students
    User.where user_type: "student"
  end

end
