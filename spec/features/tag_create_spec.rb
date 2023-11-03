require 'rails_helper'

feature 'add tag to the picture' do
  before :each do
    User.delete_all
    Tag.delete_all
    @user = create(:user, username: 'yR1eQJERMVh')
    @picture = create(:picture, user: @user)
    @new_tag = 'random tag j5VYoeLqHY'
    sign_in @user
  end

  scenario 'logged user opens picture view and adds new tag', type: :system do
    visit picture_path @picture

    within('#tags') { expect(page).to have_no_text(@new_tag) }
  
    within('#tags') do
      fill_in('name', with: @new_tag)
      click_button '+'
      expect(page).to have_text(@new_tag) 
    end
  end
end
