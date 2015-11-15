require 'rails_helper'

describe MultiChoiceAnswersController do 
  describe '#create' do 
    def do_request
      post :create, question_id: question.id, multi_choice_answer: resource_params
    end

    let!(:question) { create(:multi_choice_question) }

    context 'success' do 
      let!(:resource_params) { answer.attributes }
      let!(:answer)   { build(:multi_choice_answer) }
      let(:expected)  { MultiChoiceAnswer.last.to_json }

      it 'creates an answer' do 
        do_request 
        expect(response.body).to eq expected
      end
    end

    context 'fail' do 
      let(:resource_params) { build(:multi_choice_answer, choice_id: '').attributes }

      it 'renders error message' do 
        do_request
        expect(response.status).to eq 422
      end
    end
  end
end