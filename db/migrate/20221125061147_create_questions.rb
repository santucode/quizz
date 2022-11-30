class CreateQuestions < ActiveRecord::Migration[7.0]
  def change
    create_table :questions do |t|
      t.integer :question_number
      t.string :question_content
      t.string :correct_answer

      
      t.string :option_content_one
      t.string :option_content_two
      t.string :option_content_three
      t.string :option_content_four


      t.references :quiz, null: false, foreign_key: true

      t.timestamps
    end
  end
end
