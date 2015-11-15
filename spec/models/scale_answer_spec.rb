require 'rails_helper'

describe ScaleAnswer do 
  context 'validations' do 
    it { is_expected.to validate_presence_of :question_id }
    it { is_expected.to validate_presence_of :value }
    it { is_expected.to validate_inclusion_of(:value).in_range(0..100).with_message("The value must be between 0 and 100") }
  end

  context 'associations' do 
    it { is_expected.to belong_to :question }
  end
end