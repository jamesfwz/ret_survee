require 'rails_helper'

describe QuestionsController do 
  describe '#show' do 
    def do_request
      get :show, id: question.id 
    end

    context 'open text' do 
      let!(:question) { create(:open_text_question) }

      it 'assigns question and renders view :open_text_question' do 
        do_request
        expect(assigns(:question)).to match question
      end
    end
  end
end