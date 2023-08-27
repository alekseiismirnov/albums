require 'rails_helper'

feature 'picture upload' do
  before :all do
    User.delete_all
    @user = create(:user, username: 'yR1eQJERMVh')
    @picture = create(:picture, user: @user)
    sign_in @user
  end

  scenario 'logged user opens picture view and deletes it', type: :system, js: true do
    visit picture_path @picture

    pictures_number = @user.pictures.count 
    click_on "Delete!"

    expect(@user.pictures.count).to eq (pictures_number - 1)

    end
end
