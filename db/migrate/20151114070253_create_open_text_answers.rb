class CreateOpenTextAnswers < ActiveRecord::Migration
  def change
    create_table :open_text_answers do |t|
      t.text :message
      t.references :open_text_question, index: true
    end
  end
end
