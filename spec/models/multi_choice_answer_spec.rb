require 'rails_helper'

describe MultiChoiceAnswer do 
  context 'validations' do 
    it { is_expected.to validate_presence_of :question_id }
    it { is_expected.to validate_presence_of :choice_id }
    it { is_expected.to validate_presence_of :device_id }
  end

  context 'associations' do 
    it { is_expected.to belong_to :question }
    it { is_expected.to belong_to :choice }
    it { is_expected.to belong_to :device }
  end

  describe '.result' do 
    let!(:question) { create(:multi_choice_question) }
    let!(:ruby)     { create(:choice, title: 'Ruby',    question: question) }
    let!(:python)   { create(:choice, title: 'Python',  question: question) }
    let!(:ruby_answer)   { create_list(:multi_choice_answer, 3, choice: ruby,   question: question) }
    let!(:python_answer) { create_list(:multi_choice_answer, 2, choice: python, question: question) }

    let!(:expected) { [
      { 'Python': 0.4 },
      { 'Ruby':   0.6 }
    ] }
    it 'returns result' do 
      expect(question.answers.result).to match expected
    end
  end
end