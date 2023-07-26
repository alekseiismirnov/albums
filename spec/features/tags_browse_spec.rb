require 'rails_helper'

feature 'user can select pictures by the tag' do
  before :all do
    Tag.delete_all
    create_list(:tag, 10)
    @tag_name = 'Blrxekib9Vo'
    tag = create(:tag, name: @tag_name)
    Picture.first.tags << tag
    Picture.last.tags << tag
    @tagged = [Picture.first, Picture.last]
  end

  scenario 'from the tags list' do
    visit root_path
    click_on 'Tags'
    click_on @tag_name
    save_page
    images_urls = all('#main_pic').pluck(:src)
    expect(images_urls).to match_array @tagged.map(&:url)
  end
end
