require 'rails_helper'

feature 'individual picture view' do
  before :all do
    User.delete_all
    Picture.delete_all
    ActiveStorage::Attachment.all.each { |attachment| attachment.purge }
    @picture = create(:picture)
  end

  it 'should contain image, uploader nickname, tags', type: :system  do
    visit picture_path(@picture)
    expect(page).to have_http_status(:success)
    within('#tags') do
      expect(page.all('#tag').map(&:text)).to match_array @picture.tags.pluck(:name)
    end
    within('#picture') do
      expect(page).to have_css('img#main_pic')
    end
  end
end
