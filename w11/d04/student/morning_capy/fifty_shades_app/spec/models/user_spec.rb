RSpec.describe User do
  it "is valid with name, email and password confirmation" do
    u = User.new({
          name: 'Emily',
          email: 'edusk@gmail.com',
          password: 'valentine',
          password_confirmation: 'valentine'
        })
    expect(u).to be_valid
  end

  it "is invalid without email" do
    u = User.new({
          name: 'Emily',
          password: 'valentine',
          password_confirmation: 'valentine'
        })
    expect(u).to have(1).errors_on(:email)
  end

  it "is invalid without name" do
    u = User.new({
          password: 'valentine',
          password_confirmation: 'valentine'
        })
    expect(u).to have(1).errors_on(:name)
  end

  it "is invalid if passwords don't match" do
    u = User.new({
          password: 'valntine',
          password_confirmation: 'vaentine'
        })
    expect(u).to have(1).errors_on(:password)
  end

end
