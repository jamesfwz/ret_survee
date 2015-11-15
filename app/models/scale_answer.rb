class ScaleAnswer < ActiveRecord::Base
  belongs_to :question, class_name: ScaleQuestion

  validates :question_id, presence: true
  validates :value,       presence: true, inclusion: { in: 0..100, message: "The value must be between 0 and 100" }
end