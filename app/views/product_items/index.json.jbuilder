json.array!(@product_items) do |product_item|
  json.extract! product_item, :product_cate_id, :title, :image_url, :content
  json.url product_item_url(product_item, format: :json)
end
