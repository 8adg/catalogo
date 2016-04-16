json.array!(@productos) do |producto|
  json.extract! producto, :id, :nombre, :descr_c, :descr_l, :precio, :image
  json.url producto_url(producto, format: :json)
end
