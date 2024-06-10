class CreateAnswers < ActiveRecord::Migration[7.0]
  def change
    create_table :answers do |t|

      t.string :question_id, foreign_key: true, null: false
      t.text :answer_text, null: false
      t.string :name, null: false
      t.timestamps
    end
  end
end
