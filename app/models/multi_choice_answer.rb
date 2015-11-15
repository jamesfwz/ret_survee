class MultiChoiceAnswer < ActiveRecord::Base
  belongs_to :question, class_name: MultiChoiceQuestion
  belongs_to :choice

  validates :question_id, presence: true
  validates :choice_id, presence: true
end