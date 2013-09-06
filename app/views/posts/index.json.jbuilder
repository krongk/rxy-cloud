json.array!(@posts) do |post|
  json.extract! post, :title, :content, :cate, :keywords
  json.url post_url(post, format: :json)
end
