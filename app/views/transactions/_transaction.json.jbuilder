json.extract! transaction, :id, :transaccion_id, :producto_id, :nombre_transaccion, :display_transaccion, :created_at, :updated_at
json.url transaction_url(transaction, format: :json)
