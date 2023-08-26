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

    pictures_number = @user.pictures.count 
    attach_file("New Picture", Rails.root + "spec/fixtures/stub.jpg")
    click_button "Upload!"

    expect(@user.pictures.count).to eq (pictures_number + 1)

    end
end
