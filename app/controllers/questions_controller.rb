class QuestionsController < ApplicationController
  def show
    @question = Question.find(question_id)
    render json: @question
  end

  def result
    @question = Question.find(question_id)
    render json: @question.answers.result
  end

  protected

  def question_id
    params.require(:id)
  end
end