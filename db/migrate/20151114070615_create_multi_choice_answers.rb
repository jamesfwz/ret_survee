class CreateMultiChoiceAnswers < ActiveRecord::Migration
  def change
    create_table :multi_choice_answers do |t|
      t.references :choice, index: true
      t.references :multi_choice_question, index: true
    end
  end
end
