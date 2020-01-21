require 'rails_helper'


describe Question do
  it { should have_many(:answers) }
  it { should validate_presence_of :user_question }

  it 'something' do
    question = FactoryBot.create(:question)
    expect(question.user_question).to(eq('This is a question by a user?'))

  end
end
