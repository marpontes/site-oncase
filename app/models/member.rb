class Member < ApplicationRecord
  has_attachment :avatar, accept: [:jpg, :png, :gif]
end
