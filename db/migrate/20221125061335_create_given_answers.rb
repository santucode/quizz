class CreateGivenAnswers < ActiveRecord::Migration[7.0]
  def change
    create_table :given_answers do |t|
      t.string :given_option_number
      
      t.references :question, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.references :quiz, null: false, foreign_key: true

      t.timestamps
    end
  end
end
