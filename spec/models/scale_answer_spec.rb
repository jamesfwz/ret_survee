require 'rails_helper'

describe ScaleAnswer do 
  context 'validations' do 
    it { is_expected.to validate_presence_of :question_id }
    it { is_expected.to validate_presence_of :device_id }
    it { is_expected.to validate_presence_of :value }
    it { is_expected.to validate_inclusion_of(:value).in_range(0..100).with_message("The value must be between 0 and 100") }
  end

  context 'associations' do 
    it { is_expected.to belong_to :question }
    it { is_expected.to belong_to :device }
  end

  describe '.result' do 
    let!(:question)       { create(:scale_question) }
    let!(:first_answer)   { create(:scale_answer, question: question, value: 40) }
    let!(:second_answer)  { create(:scale_answer, question: question, value: 54) }
    let!(:expected) { {
      total: 2, 
      average: 47
    } }

    it 'returns average value' do 
      expect(question.answers.result).to eq expected
    end
  end
end