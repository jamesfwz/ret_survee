class OpenTextAnswer < ActiveRecord::Base
  belongs_to :question, class_name: OpenTextQuestion
end