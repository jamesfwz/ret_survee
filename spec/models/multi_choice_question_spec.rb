require 'rails_helper'

describe MultiChoiceQuestion do 
  context 'associations' do 
    it { is_expected.to have_many :answers }
    it { is_expected.to have_many :choices }
  end
end