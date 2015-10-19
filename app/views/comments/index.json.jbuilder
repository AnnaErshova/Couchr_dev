json.array!(@comments) do |comment|
  json.extract! comment, :id, :body, :author, :workout_id
  json.url comment_url(comment, format: :json)
end
