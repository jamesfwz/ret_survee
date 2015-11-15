class QuestionsController < ApplicationController
  def show
    @question = Question.find(question_id)
    render json: @question
  end

  protected

  def question_id
    params.require(:id)
  end
end