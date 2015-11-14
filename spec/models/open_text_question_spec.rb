require 'rails_helper'

describe OpenTextQuestion do 
  context 'associations' do 
    it { is_expected.to have_many :answers }
  end
end