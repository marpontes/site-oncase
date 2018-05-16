json.extract! case_product, :id, :category, :name, :description, :link, :color, :image_height, :created_at, :updated_at
json.url case_product_url(case_product, format: :json)
