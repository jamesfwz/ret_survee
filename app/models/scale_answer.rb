class ScaleAnswer < ActiveRecord::Base
  belongs_to :question, class_name: ScaleQuestion
  belongs_to :device

  validates :question_id, presence: true
  validates :device_id,   presence: true
  validates :value,       presence: true, 
                          inclusion:  { 
                            in: 0..100, 
                            message: "The value must be between 0 and 100" 
                          }

  def self.result
    { total: all.size,  average: average(:value) }
  end
end