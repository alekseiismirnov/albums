require 'rails_helper'

feature 'visitor can browse pics of the particular user'do
  before :all do
    User.delete_all
    Picture.delete_all
    ActiveStorage::Attachment.all.each { |attachment| attachment.purge }

    @user = create(:user, username: 'VNHJ255U2WRe')
    create_list(:picture, 10, user: @user)
    another_user = create(:user, username: 'r5plphnC0PO5')
    create_list(:picture, 5, user: another_user)
  end

  scenario 'from its user-page', type: :system do
    visit user_path @user

    images = all('#main_pic').count
    expect(images).to eq @user.pictures.count
  end
end
