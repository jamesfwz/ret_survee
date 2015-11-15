class RenameScaleAnswersAnswerToValue < ActiveRecord::Migration
  def change
    rename_column :scale_answers, :answer, :value
  end
end
