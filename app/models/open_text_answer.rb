class OpenTextAnswer < ActiveRecord::Base
  belongs_to :question, class_name: OpenTextQuestion

  validates :question_id, presence: true
  validates :message,     presence: true
end