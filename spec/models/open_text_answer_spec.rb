require 'rails_helper'

describe OpenTextAnswer do 
  context 'validations' do 
    it { is_expected.to validate_presence_of :question_id }
    it { is_expected.to validate_presence_of :device_id }
    it { is_expected.to validate_presence_of :message }
  end

  context 'associations' do 
    it { is_expected.to belong_to :question }
    it { is_expected.to belong_to :device }
  end
end