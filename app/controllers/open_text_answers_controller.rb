class OpenTextAnswersController < AnswersController 
  protected

  def resource_params
    params.require(:open_text_answer).permit(:message)
  end
end