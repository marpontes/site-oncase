class TechProduct < ApplicationRecord
  has_attachment :image, accept: [:jpg, :png, :gif]
end
