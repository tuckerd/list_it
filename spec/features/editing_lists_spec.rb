require "spec_helper"

feature "Editing Lists" do
  before do
    list = FactoryGirl.create(:list, title: "Camping")
    @user = FactoryGirl.create(:user)
    list.update_attributes(user: @user)
    visit '/'
    sign_in_as!(@user)
    click_link list.title
    click_link "Rename"
    page.should have_content("Change List Name")
  end

  scenario "can change the title of the list" do
    fill_in "Title", with: "Cold Weather Camping"
    click_button "Update"
  end

  scenario "cannot change the title to blank title" do

  end
end
