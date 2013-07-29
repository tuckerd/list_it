require "spec_helper"

feature "Creating Lists" do
  before do
    visit '/'
    @user = FactoryGirl.create(:user)
    sign_in_as!(@user)
  end 

  scenario "can create a new list" do
    click_link "New List"
    fill_in "Title", with: "Groceries"
    click_button "Create List"
    page.should have_content("List has been created.")
    page.should have_content("Groceries")
  end

  scenario "cannot create a new list without a title" do
    click_link "New List"
    click_button "Create List"
    page.should have_content("List has not been created.")
  end

  scenario "cannot create a new list without logging in" do
    visit '/'
    click_link "Sign out"
    visit '/'
    click_link "New List"
    page.should have_content("You need to sign in or sign up before continuing.")
  end

end
