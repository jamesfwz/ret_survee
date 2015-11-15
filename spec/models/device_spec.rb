require 'rails_helper'

describe Device do 
  context 'validates' do 
    it { is_expected.to validate_presence_of :udid }
    it { is_expected.to validate_uniqueness_of :udid }
  end

  context 'associations' do 
    it { is_expected.to have_many :open_text_answers }
    it { is_expected.to have_many :multi_choice_answers }
    it { is_expected.to have_many :scale_answers }
  end
end