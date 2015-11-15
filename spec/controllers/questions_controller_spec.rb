require 'rails_helper'

describe QuestionsController do 
  describe '#show' do 
    def do_request
      get :show, id: question.id 
    end

    context 'open text' do 
      let!(:question) { create(:open_text_question) }

      it 'assigns question' do 
        do_request
        api_response = JSON::parse(response.body)
        expect(api_response['question']['id']).to eq question.id        
      end
    end
  end
end