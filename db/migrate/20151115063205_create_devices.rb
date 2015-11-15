class CreateDevices < ActiveRecord::Migration
  def change
    create_table :devices do |t|
      t.string :udid
    end

    add_reference :open_text_answers,    :device, index: true
    add_reference :multi_choice_answers, :device, index: true
    add_reference :scale_answers,        :device, index: true
  end
end
