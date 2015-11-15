require 'rails_helper'

describe OpenTextAnswer do 
  context 'validations' do 
    it { is_expected.to validate_presence_of :message }
  end

  context 'associations' do 
    it { is_expected.to belong_to :question }
  end
end