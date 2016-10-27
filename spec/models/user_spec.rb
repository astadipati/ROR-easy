require 'rails_helper'

RSpec.describe User, type: :model do
  describe "creation" do
    before do
      @user = User.create(email:"test@gmail.com", password:"asdfasdf", password_confirmation:"asdfasdf", first_name:"John", last_name:"Makalele")
    end
    it "can be created" do
      # user = User.create(email:"test@gmail.com", password:"asdfasdf", password_confirmation:"asdfasdf")
      expect(@user).to be_valid
    end
    it "cannot be created wothout first_name, and last_name" do
      @user.first_name = nil
      @user.last_name = nil
      expect(@user).to_not be_valid
    end
  end
end
