require "spec_helper"

feature "Creating Lists" do
  scenario "can create a new list" do
    visit '/'
    click_link "New List"
    fill_in "Title", with: "Groceries"
    click_button "Create List"
    page.should have_content("List has been successfully created.")
    page.should have_content("Groceries")
  end

  scenario "cannot create a new list without a title" do
    visit '/'
    click_link "New List"
    click_button "Create List"
    page.should have_content("List has not been created.")
  end

  scenario "cannot create a new list without logging in"
end
