class ScaleAnswer < ActiveRecord::Base
  belongs_to :question, class_name: ScaleQuestion

  validates :question_id, presence: true
  validates :value,       presence: true
end