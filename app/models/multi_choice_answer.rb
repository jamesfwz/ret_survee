class MultiChoiceAnswer < ActiveRecord::Base
  belongs_to :question, class_name: MultiChoiceQuestion
  belongs_to :choice
  belongs_to :device

  validates :question_id, presence: true
  validates :choice_id,   presence: true
  validates :device_id,   presence: true

  def self.result
    percent = 0
    results = []
    groups = select('choices.title, count(choices.id) as total').joins(:choice).group('choices.id').order('choices.title')
    total = groups.map(&:total).sum

    groups.each do |group|
      percent = (group.total.to_f/total).round(2) if total > 0
      results << { "#{group.title}": percent }
    end
    results
  end
end