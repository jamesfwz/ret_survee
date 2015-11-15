require 'rails_helper'

describe OpenTextAnswer do 
  context 'validations' do 
    it { is_expected.to validate_presence_of :question_id }
    it { is_expected.to validate_presence_of :device_id }
    it { is_expected.to validate_presence_of :message }
  end

  context 'associations' do 
    it { is_expected.to belong_to :question }
    it { is_expected.to belong_to :device }
  end

  describe '.result' do 
    let!(:question) { create(:open_text_question, :with_2_answers) }

    it 'returns a list of results' do 
      expect(question.answers.result).to match question.answers
    end
  end
end