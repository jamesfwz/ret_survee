class CreateScaleAnswers < ActiveRecord::Migration
  def change
    create_table :scale_answers do |t|
      t.integer :answer 
      t.references :scale_question, index: true
    end
  end
end
