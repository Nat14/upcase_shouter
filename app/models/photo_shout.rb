class PhotoShout < ApplicationRecord
  has_attached_file :image, style: {
    shout: '200x200>'
  }
end
