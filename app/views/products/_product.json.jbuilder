json.extract! product, :id, :product_id, :segmento_id, :nombre_producto, :display_producto, :created_at, :updated_at
json.url product_url(product, format: :json)
