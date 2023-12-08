class Picture < ApplicationRecord 
  belongs_to :user
  has_and_belongs_to_many :tags

  has_one_attached :file
  validates :file, 
    attached: true,
    size: { less_than: 5.megabytes , message: 'is too large' },
    content_type: ['image/png', 'image/jpeg']
end
