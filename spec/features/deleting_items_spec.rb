require "spec_helper"

feature "Deleting Items" do
  scenario "can delete items" do
    list = FactoryGirl.create(:list, title: "Home Depot")
    @user = FactoryGirl.create(:user)
    list.update_attributes(user: @user)

    visit '/'
    click_link list.title
    click_link "New Item"
    fill_in "Quantity", with: 1
    fill_in "Item", with: "Tent"
    click_button "Create"
    click_link "X"
    page.should_not have_content("Tent")
    page.should have_content("Item has been deleted.")
  end
end
