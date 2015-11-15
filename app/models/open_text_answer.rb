class OpenTextAnswer < ActiveRecord::Base
  belongs_to :question, class_name: OpenTextQuestion
  belongs_to :device 
  
  validates :question_id, presence: true
  validates :device_id,   presence: true
  validates :message,     presence: true
end