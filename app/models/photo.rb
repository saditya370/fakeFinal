class Photo < ApplicationRecord

        acts_as_list
    
    belongs_to :album
    has_one_attached :image

   
  def set_position
    max_position = Photo.maximum(:position)
    self.position = max_position.nil? ? 1 : max_position + 1
  end
end
