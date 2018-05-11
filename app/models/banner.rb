class Banner < ApplicationRecord
  has_attachment :image, accept: [:jpg, :png, :gif]
end
