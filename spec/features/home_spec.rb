require 'rails_helper'

feature "Home workflow", :type => :feature do
  context "User visits home page" do
    before do
      @user = create(:user)
      create(:passenger, user: @user)
      visit root_path
    end
    context "User like sing in the page" do
      context "User has a correct password" do
        it "User can Sign in at the page" do
          click_link('Ingresa')
          expect(current_path).to eq(new_user_session_path)
          fill_in 'user_email', :with => @user.email
          fill_in 'user_password', :with => @user.password
          click_on("Log in")
          expect(current_path).to eq(passenger_path)
        end
      end
      context "User hasn't a correct password" do
        it "User cannot sign in at the page" do
          click_link('Ingresa')
          expect(current_path).to eq(new_user_session_path)
          fill_in 'user_email', :with => @user.email
          fill_in 'user_password', :with => "45uuu455"
          click_on("Log in")
          expect(current_path).to eq(new_user_session_path)
        end
      end
    end
  end
end
