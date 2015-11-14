class CreateChoices < ActiveRecord::Migration
  def change
    create_table :choices do |t|
      t.string :title
    end
  end
end
