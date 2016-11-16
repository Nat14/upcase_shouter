class PhotoShout < ApplicationRecord
  has_attached_file :image, styles: {
    shout: "200x200>"
  }
end
