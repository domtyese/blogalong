json.array!(@blogs) do |blog|
  json.extract! blog, :id, :title, :blog_text, :user_id
  json.url blog_url(blog, format: :json)
end
