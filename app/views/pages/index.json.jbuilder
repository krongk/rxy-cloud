json.array!(@pages) do |page|
  json.extract! page, :title, :content, :name, :keywords
  json.url page_url(page, format: :json)
end
