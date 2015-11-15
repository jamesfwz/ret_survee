require 'rails_helper'

describe Choice do 
  context 'validations' do 
    it { is_expected.to validate_presence_of :title }
    it { is_expected.to validate_presence_of :question_id }
  end

  context 'assocations' do 
    it { is_expected.to belong_to :question }
  end
end