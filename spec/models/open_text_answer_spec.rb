require 'rails_helper'

describe OpenTextAnswer do 
  context 'associations' do 
    it { is_expected.to belong_to :question }
  end
end