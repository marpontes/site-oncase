json.extract! tech_product, :id, :name, :description, :code_available, :link, :created_at, :updated_at
json.url tech_product_url(tech_product, format: :json)
