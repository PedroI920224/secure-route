require 'rails_helper'

feature "Dashboard", :type => :feature do
  context "User visit Passenger dashboard view" do
    before do
      @user = create(:user)
      create(:passenger, user: @user)
      visit root_path
    end
    context "User not logged In" do
      scenario "User can't watch dashboard view" do
        visit passenger_path
        expect(current_path).to eq(new_user_session_path)
      end
    end
    context "User Log In" do
      scenario "User can watch dashboard view" do
        visit new_user_session_path
        fill_in 'user_email', :with => @user.email
        fill_in 'user_password', :with => @user.password
        click_on("Log in")
        expect(current_path).to eq(passenger_path)
        expect(page).to have_content("Aquí puedes ver la lista de tus recorridos")
      end
    end
  end
end
