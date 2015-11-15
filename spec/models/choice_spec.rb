require 'rails_helper'

describe Choice do 
  context 'validations' do 
    it { is_expected.to validate_presence_of :title }
  end
end