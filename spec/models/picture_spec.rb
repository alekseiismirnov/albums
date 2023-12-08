require 'rails_helper'

describe Picture do
  it { is_expected.to validate_attached_of(:file) }
  it { is_expected.to validate_content_type_of(:file).allowing('image/png', 'image/jpeg') }
  it { is_expected.to validate_size_of(:file).less_than(5.megabytes) }
end