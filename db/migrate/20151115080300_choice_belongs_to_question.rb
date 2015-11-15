class ChoiceBelongsToQuestion < ActiveRecord::Migration
  def change
    add_reference :choices, :question, index: true
  end
end
