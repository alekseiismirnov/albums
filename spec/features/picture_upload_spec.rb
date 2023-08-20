require 'rails_helper'

feature 'picture upload' do
  before :all do
    User.delete_all
    @user = create(:user, username: 'yR1eQJERMVh')
    sign_in @user
  end

  scenario 'logged user from the root page opens his page and uploads a new picture', type: :system, js: true do
    visit root_path
    within '.navbar' do
      click_on @user.username
    end

    attach_file("Upload New Picture", Rails.root + "spec/fixtures/stub.jpg")
  end
end
