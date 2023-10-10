require 'rails_helper'

feature 'navigation bar' do
  before :all do
    User.delete_all
    @user = create(:user)
  end

  context 'not logged visitor' do
    before :all do
      sign_out :user
    end

    it 'has a valid sign up/in links and no sign out one', type: :system do
      visit root_path
      expect(page).to have_http_status :success
      within '.navbar' do
        expect(page).to have_link 'Albums', href: root_path
        expect(page).to have_link 'Sign In', href: new_user_session_path
        expect(page).not_to have_link 'Sign out'
      end
    end
  end

  context 'logged visitor' do
    before :all do
      sign_out :user
      sign_in @user
    end

    it 'has a sighn out ling and no sign up/in ones', type: :system do
      visit root_path
      expect(page).to have_http_status :success
      within '.navbar' do
        expect(page).to have_link 'Albums', href: root_path
        expect(page).to have_link 'Tags', href: tags_path
        expect(page).not_to have_link 'Sign In'
        expect(page).to have_link @user.username, href: user_path(@user)
        click_on 'Sign out'

        expect(page).not_to have_link 'Sign out'
      end
    end
  end
end
