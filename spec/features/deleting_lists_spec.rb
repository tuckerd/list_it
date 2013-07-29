require "spec_helper"

feature "Deleting Lists" do
  scenario "can delete list" do
    list = FactoryGirl.create(:list, title: "Home Depot")
    visit '/'
    click_link list.title
    click_link "Delete"
    page.should_not have_content(list.title)
    page.should have_content("List has been deleted.")
  end

  scenario "cannot delete list that is not the owner of"
end
