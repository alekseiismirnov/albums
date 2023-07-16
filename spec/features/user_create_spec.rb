require 'rails_helper'

feature 'site visitor cat create a user account' do
  before :all do
    @user = build(:user)
  end

  before :each do
    sign_out :user
  end

  it 'can proceed to the registration form and create an account' do
    visit root_path
    within '.navbar' do
      click_on 'Sign Up'
    end

    fill_in 'Username', with: @user.username
    fill_in 'Email', with: @user.email
    fill_in 'Password', with: @user.password
    fill_in 'Password confirmation', with: @user.password


    click_on 'Sign up'

    expect(page).to have_http_status :success
    user = User.find_by email: @user.email
    expect(user.username).to eq @user.username
  end
end
