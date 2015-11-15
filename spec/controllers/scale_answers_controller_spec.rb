require 'rails_helper'

describe ScaleAnswersController do 
  describe '#create' do 
    def do_request
      post :create, question_id: question.id, scale_answer: resource_params
    end

    let!(:question) { create(:scale_question) }

    context 'success' do 
      let!(:resource_params) { answer.attributes }
      let!(:answer)   { build(:scale_answer) }
      let(:expected)  { ScaleAnswer.last.to_json }

      it 'creates an answer' do 
        do_request 
        expect(response.body).to eq expected
      end
    end

    context 'fail' do 
      let(:resource_params) { build(:scale_answer, value: '').attributes }

      it 'renders error message' do 
        do_request
        expect(response.status).to eq 422
      end
    end
  end
end