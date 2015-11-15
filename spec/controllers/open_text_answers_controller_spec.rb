require 'rails_helper'

describe OpenTextAnswersController do 
  describe '#create' do 
    def do_request
      post :create, question_id: question.id, open_text_answer: resource_params
    end

    let!(:question) { create(:open_text_question) }

    context 'success' do 
      let!(:resource_params) { answer.attributes }
      let!(:answer)   { build(:open_text_answer) }
      let(:expected)  { OpenTextAnswer.last.to_json }

      it 'creates an answer' do 
        do_request 
        expect(response.body).to eq expected
      end
    end

    context 'fail' do 
      let(:resource_params) { build(:open_text_answer, message: '').attributes }

      it 'renders error message' do 
        do_request
        expect(response.status).to eq 422
      end
    end
  end
end