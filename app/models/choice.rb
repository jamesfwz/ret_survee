class Choice < ActiveRecord::Base
  validates :title, presence: true
end