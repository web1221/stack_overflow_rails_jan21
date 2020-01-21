require 'rails_helper'

describe Answer do
  it { should belong_to(:question) }
  it { should validate_presence_of :user_answer }

  it 'something' do
    question = FactoryBot.create(:question)
    answer = FactoryBot.create(:answer, :question_id => question.id)
    expect(answer.user_answer).to(eq('This is a answer by a user?'))

  end
end
