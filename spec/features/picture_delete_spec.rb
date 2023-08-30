require 'rails_helper'

feature 'picture delete' do
  before :each do
    User.delete_all
    @user = create(:user, username: 'yR1eQJERMVh')
    @picture = create(:picture, user: @user)
    sign_in @user
  end

  scenario 'logged user opens picture view and deletes it', type: :system do
    visit picture_path @picture

    pictures_number = @user.pictures.count 
    click_on "Delete!"
    delete picture_path(@picture)

    expect(@user.pictures.count).to eq (pictures_number - 1)

  end

  scenario 'logged user do not see Delete button for others picture', type: :system do 
    @another_user = create(:user)
    sign_in @another_user

    visit picture_path @picture
    expect(page).to have_no_button 'Delete!'
  end
end
