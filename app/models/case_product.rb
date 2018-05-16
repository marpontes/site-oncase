class CaseProduct < ApplicationRecord
  has_many :case_product_descriptions, inverse_of: :case_product

  enum color: [:green, :blue, :light_blue, :orange, :red]
  
  has_attachment :image, accept: [:jpg, :png, :gif]

  accepts_nested_attributes_for :case_product_descriptions, allow_destroy: true
end
