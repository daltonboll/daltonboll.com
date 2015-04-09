json.array!(@comments) do |comment|
  json.extract! comment, :id, :name, :email, :website, :body, :post_id
  json.url post_comment_url(comment, format: :json)
end
