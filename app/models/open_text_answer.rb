class OpenTextAnswer < ActiveRecord::Base
  belongs_to :question, class_name: OpenTextQuestion

  validates :message, presence: true
end