class ScaleAnswersController < AnswersController 
  protected

  def resource_params
    params.require(:scale_answer).permit(:device_id, :value)
  end
end