class QuestionsController < ApplicationController
  def show
    @question = Question.find(question_id)
    @json  = { question: @question }
    render :json => @json
  end

  protected

  def question_id
    params.require(:id)
  end
end