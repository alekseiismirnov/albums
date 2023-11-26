require 'rails_helper'

feature 'add tag to the picture' do
  before :each do
    User.delete_all
    Tag.delete_all
    @user = create(:user, username: 'yR1eQJERMVh')
    @another_user = create(:user, username:'OI6nBlawjiH')
    @picture = create(:picture, user: @user)
    @new_tag = 'random tag j5VYoeLqHY'
  end

  scenario 'not logged visitor do not see an add new tag form' do
    sign_out :user
    visit picture_path @picture

    expect(page).to have_no_field('name')
  end

  scenario 'logged do not see an add new tag form under not own picture' do
    sign_out :user
    visit picture_path @picture
    
    expect(page).to have_no_field('name')
  end

  scenario 'logged user opens picture view and adds new tag', type: :system do
    sign_in @user
    visit picture_path @picture

    within('#tags') { expect(page).to have_no_text(@new_tag) }
  
    within('#tags') do
      fill_in('name', with: @new_tag)
      find('button#create_tag').click
      expect(page).to have_text(@new_tag) 
    end
  end
end
