require "spec_helper"

feature "Creating Items" do
  before do
    list = FactoryGirl.create(:list, title: "Camping - Lake")
    @user = FactoryGirl.create(:user)
    list.update_attributes(user: @user)
    visit '/'
    click_link list.title
    click_link "New Item"
  end

  scenario "can create item" do
    fill_in "Quantity", with: 1
    fill_in "Item", with: "Tent"
    click_button "Create"
    page.should have_content("Item has been added to list.")
    page.should have_content("Camping - Lake")
    page.should have_content("Tent")
  end

  scenario "cannot create item without Item filled in" do
    fill_in "Quantity", with: "1"
    click_button "Create"
    page.should have_content("Item has not been added.")
  end
end
