require 'rails_helper'
require "cancan/matchers"

describe Ability do

  before :each do
    User.delete_all
    @user = create(:user)
    @picture = create(:picture, user: @user)
    @another_user = create(:user)
    @ability = Ability.new(@user)
    @aability = Ability.new(@another_user)
    @nulability = Ability.new(nil)
  end

  context 'non-loged site visitor' do
    it 'only can view picture' do
      expect(@nulability).to be_able_to(:show, @picture)
      expect(@nulability).not_to be_able_to(:update, @picture)
      expect(@nulability).not_to be_able_to(:destroy, @picture)
    end
  end

  context 'user not owning the picture' do
    it 'only can view picture' do
      expect(@nulability).to be_able_to(:show, @picture)
      expect(@nulability).not_to be_able_to(:update, @picture)
      expect(@nulability).not_to be_able_to(:destroy, @picture)
    end
  end

  context 'user owning the pictures' do
    it 'has RUD access' do
      expect(@ability).to be_able_to(:show, @picture)
      expect(@ability).to be_able_to(:update, @picture)
      expect(@ability).to be_able_to(:destroy, @picture)
    end
  end
  
end