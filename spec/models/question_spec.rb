require 'rails_helper'

describe Question do 
  context 'validations' do 
    it { is_expected.to validate_presence_of :title }
    it { is_expected.to enumerize(:type).in(:OpenTextQuestion, :MultiChoiceQuestion, :ScaleQuestion) }
  end
end