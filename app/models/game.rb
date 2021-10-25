class Game < ApplicationRecord
  has_and_belongs_to_many :genres
  has_one_attached :thumbnail

  def resized_thumbnail
    # It's 16:9 
    thumbnail.variant(resize: '240x135!')
  end 
end
