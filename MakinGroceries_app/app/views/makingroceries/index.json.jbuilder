json.array!(@makingroceries) do |makingrocery|
  json.extract! makingrocery, :id, :item, :quantity, :coupon, :done
  json.url makingrocery_url(makingrocery, format: :json)
end
