require 'rails_helper'

describe QuestionsController do 
  describe '#show' do 
    def do_request
      get :show, id: question.id 
    end

    context 'open text' do 
      let!(:question) { create(:open_text_question) }
      let!(:expected) { question.to_json }

      it 'assigns question' do 
        do_request
        expect(response.body).to eq expected
      end
    end
  end

  describe '#result' do 
    def do_request 
      get :result, id: question.id 
    end

    context 'open text' do 
      let!(:question) { create(:open_text_question, :with_2_answers) }
      let(:expected)  { question.answers.to_json }

      it 'returns a list of answers' do 
        do_request
        expect(response.body).to eq expected
      end
    end

    context 'multi choice' do 
      let!(:question) { create(:multi_choice_question) }
      let!(:ruby)     { create(:choice, title: 'Ruby',    question: question) }
      let!(:python)   { create(:choice, title: 'Python',  question: question) }
      let!(:ruby_answer)   { create_list(:multi_choice_answer, 3, choice: ruby,   question: question) }
      let!(:python_answer) { create_list(:multi_choice_answer, 2, choice: python, question: question) }

      let!(:expected) { [
        { 'Python': 0.4 },
        { 'Ruby':   0.6 }
      ].to_json }

      it 'returns result' do 
        do_request
        expect(response.body).to eq expected
      end
    end

    context 'scale' do
      let!(:question)       { create(:scale_question) }
      let!(:first_answer)   { create(:scale_answer, question: question, value: 40) }
      let!(:second_answer)  { create(:scale_answer, question: question, value: 54) }
      let!(:expected) { {
        total: 2, 
        average: "47.0"
      }.to_json }

      it 'returns average value' do 
        do_request
        expect(response.body).to eq expected
      end
    end
  end
end