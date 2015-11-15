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
  end
end