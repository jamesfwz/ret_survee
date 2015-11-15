class AnswersController < ApplicationController
  def create
    @question = Question.find(question_id)
    @answer = @question.answers.new(resource_params)

    if @answer.save
      render json: @answer, status: :created
    else
      render json: @answer.errors, status: :unprocessable_entity
    end
  end

  protected

  def question_id
    params.require(:question_id)
  end

  def resource_params
    raise NotImplementedError
  end
end