FactoryBot.define do
  factory(:question) do
    user_question {'This is a question by a user?'}
  end

  factory(:answer) do
    user_answer {'This is a answer by a user?'}
  end
end
