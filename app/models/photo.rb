class Photo < ApplicationRecord

    
    belongs_to :album
    has_one_attached :image

    # after_create :set_increment

    # def set_increment
    #     if position == nil
    #     self.update(position: 1)
    #     else
    #         position += 1
    #         self.update(:position)
    #     end
    # end
end
