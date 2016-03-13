json.array!(@posts) do |post|
  json.extract! post, :id, :title, :user_id
  json.extract! post.try(:user), :name
  json.url post_url(post, format: :json)
end
