require 'rails_helper'

feature 'add tag to the picture' do
  before :each do
    User.delete_all
    Tag.delete_all
    Picture.delete_all
    @user = create(:user)
    @picture = create(:picture, user: @user)
    @tags = create_list(:tag, 6)
    @picture.tags = @tags
    @tag = @tags.sample
    sign_in @user
  end

  scenario 'logged user deletes a tag from his uploaded picture', type: :system do
    visit picture_path @picture
    save_page
    within('#tags') do 
      expect(page).to have_css('span#tag', text: @tag.name)
    end

    tag_block = find('span#tag', text: @tag.name)
    tag_block.find('button').click
    expect(page).to have_http_status(:success)

    within('#tags') do 
      expect(page).to have_no_css('span#tag', text: @tag.name)
    end
  end
end
