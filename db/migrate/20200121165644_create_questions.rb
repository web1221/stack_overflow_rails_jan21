class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.column(:user_question, :string)

      t.timestamps()
    end
  end
end
