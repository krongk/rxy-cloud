json.array!(@comments) do |comment|
  json.extract! comment, :name, :email, :mobile_phone, :content, :is_processed
  json.url comment_url(comment, format: :json)
end
