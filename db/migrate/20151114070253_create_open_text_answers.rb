class CreateOpenTextAnswers < ActiveRecord::Migration
  def change
    create_table :open_text_answers do |t|
      t.text :message
      t.references :question, index: true
    end
  end
end
