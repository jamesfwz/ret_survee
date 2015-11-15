class Device < ActiveRecord::Base
  has_many :open_text_answers
  has_many :multi_choice_answers
  has_many :scale_answers

  validates :udid, presence: true, uniqueness: true
end