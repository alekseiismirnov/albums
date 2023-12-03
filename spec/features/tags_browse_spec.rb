require 'rails_helper'

feature 'user can select pictures by the tag'do
  scenario 'from the tags list', type: :system do
    create_list(:tag, 10)
    create_list(:picture, 15)
    @tag_name = 'Blrxekib9Vo'
    tag = create(:tag, name: @tag_name)
    Picture.first.tags << tag
    Picture.last.tags << tag
    @tagged = [Picture.first, Picture.last]

    visit root_path

    click_on 'Tags'
    click_on @tag_name
    images = all('#main_pic').count
    expect(images).to eq @tagged.count
  end
end
