json.array! @questions, partial: "questions/question", as: :question

# json.array! @questions do |question|
#   json.id question.id
#   json.content question.content
#   json.topic_id question.topic_id
#   json.created_at question.created_at
# end
