require 'rails_helper'

describe ScaleAnswer do 
  context 'validations' do 
    it { is_expected.to validate_presence_of :question_id }
    it { is_expected.to validate_presence_of :value }
  end

  context 'associations' do 
    it { is_expected.to belong_to :question }
  end
end