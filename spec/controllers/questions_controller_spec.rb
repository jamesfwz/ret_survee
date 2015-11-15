require 'rails_helper'

describe QuestionsController do 
  describe '#show' do 
    def do_request
      get :show, id: question.id 
    end

    context 'open text' do 
      let!(:question) { create(:open_text_question) }
      let!(:expected) { { question: question }.to_json }

      it 'assigns question' do 
        do_request
        expect(response.body).to eq expected
      end
    end
  end
end