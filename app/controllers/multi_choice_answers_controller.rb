class MultiChoiceAnswersController < AnswersController 
  protected

  def resource_params
    params.require(:multi_choice_answer).permit(:choice_id)
  end
end