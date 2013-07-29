require "spec_helper"

feature "Creating Items" do
  before do
    list = FactoryGirl.create(:list, title: "Camping - Lake")
    visit '/'
    click_link list.title
    click_link "New Item"
  end

  scenario "can create item" do
    fill_in "Quantity", with: 1
    fill_in "Item", with: "Tent"
    click_button "Create"
    page.should have_item("Item has been added.")
    page.should have_item("Camping - Lake")
    page.should have_item("Tent")
  end

  scenario "cannot create item without Item filled in" do
    fill_in "Quantity", with: "1"
    click_button "Create"
    page.should have_item("Item has not been added.")
  end

  scenario "cannot create item without owning the list"
end
