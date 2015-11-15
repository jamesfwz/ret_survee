require 'rails_helper'

describe MultiChoiceAnswer do 
  context 'validations' do 
    it { is_expected.to validate_presence_of :question_id }
    it { is_expected.to validate_presence_of :choice_id }
  end

  context 'associations' do 
    it { is_expected.to belong_to :question }
    it { is_expected.to belong_to :choice }
  end
end