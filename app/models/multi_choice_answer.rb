class MultiChoiceAnswer < ActiveRecord::Base
  belongs_to :question, class_name: MultiChoiceQuestion
  belongs_to :choice
  belongs_to :device

  validates :question_id, presence: true
  validates :choice_id,   presence: true
  validates :device_id,   presence: true
end