require 'rails_helper'

feature 'visitor can browse pics of the particular user' do
  scenario 'from his user-page', type: :system do
    @user = create(:user, username: 'VNHJ255U2WRe')
    create_list(:picture, 10, user: @user)
    another_user = create(:user, username: 'r5plphnC0PO5')
    create_list(:picture, 5, user: another_user)

    visit user_path @user

    images = all('#main_pic').count
    expect(images).to eq @user.pictures.count
  end
end
