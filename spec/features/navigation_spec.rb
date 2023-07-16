require 'rails_helper'

feature 'navigation bar' do
  before :all do
    @user = create(:user)
  end

  context 'not logged visitor' do
    before :all do
      sign_out :user
      visit root_path
    end

    it 'has a valid sign up/in links and no sign out one' do
      within '.navbar' do
        expect(page).to have_link 'Albums'
        expect(page).to have_link 'Sign Up'
        expect(page).to have_link 'Sign In'
        expect(page).not_to have_link 'Sign Out'
      end
    end
  end

  context 'logged visitor' do
    before :all do
      sign_out :user
      sign_in @user
      visit root_path
    end

    it 'has a sighn out ling and no sign up/in ones' do
      within '.navbar' do
        expect(page).to have_link 'Albums'
        expect(page).not_to have_link 'Sign Up'
        expect(page).not_to have_link 'Sign In'
        expect(page).to have_link 'Sign Out'
      end
    end
  end
end
