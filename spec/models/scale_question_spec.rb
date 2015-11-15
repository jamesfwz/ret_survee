require 'rails_helper'

describe ScaleQuestion do 
  context 'associations' do 
    it { is_expected.to have_many :answers }
  end
end