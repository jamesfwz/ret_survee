class Question < ActiveRecord::Base
  extend Enumerize

  validates :title, presence: true
  enumerize :type, in: [:OpenTextQuestion, :MultiChoiceQuestion, :ScaleQuestion]
end