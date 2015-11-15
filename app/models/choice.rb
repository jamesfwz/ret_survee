class Choice < ActiveRecord::Base
  belongs_to :question, class_name: MultiChoiceQuestion
  validates :title,       presence: true
  validates :question_id, presence: true
end