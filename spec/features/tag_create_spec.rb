require 'rails_helper'

feature 'add tag to the picture' do
  before :each do
    sign_out :user
    User.delete_all
    Tag.delete_all
    Picture.delete_all

    @user = create(:user, username: 'yR1eQJERMVh')
    @another_user = create(:user, username:'OI6nBlawjiH')
    @picture = create(:picture, user: @user)
    @another_pic = create(:picture, user: @another_user)
    @new_tag = 'random tag j5VYoeLqHY'
  end

  scenario 'not logged visitor does not see an add new tag form' do
    sign_out :user
    visit picture_path @picture

    expect(page).to have_no_field('picture[tag_name]')
  end

  scenario 'logged user does not see an add new tag form under not own picture' do
    sign_in @another_user
    visit picture_path @picture
    
    expect(page).to have_no_field('picture[tag_name]')
  end

  scenario 'logged user opens picture view and adds new tag' do
    sign_in @user
    visit picture_path @picture

    within('#tags') { expect(page).to have_no_text(@new_tag) }
  
    within('#tags') do
      fill_in('picture[tag_name]', with: @new_tag)
      find('button#create_tag').click
      expect(page).to have_text(@new_tag) 
    end
  end

  scenario 'user adds already existing tag' do
    @another_pic.tags.create(name: @new_tag)
    sign_in @user
    visit picture_path @picture

    within('#tags') { expect(page).to have_no_text(@new_tag) }
  
    within('#tags') do
      fill_in('picture[tag_name]', with: @new_tag)
      find('button#create_tag').click
      expect(page).to have_text(@new_tag) 
    end
  end
end
