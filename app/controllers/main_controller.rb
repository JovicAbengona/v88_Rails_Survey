class MainController < ApplicationController
  @@user
  @@counter = 0
  def index
  end

  def process_form
    flash[:msg] = "Thanks for submitting this form! You have submitted this form #{@@counter} times now."
    @@user = user_params
    @@counter += 1
    redirect_to '/result'
  end

  def survey_result
    @user = @@user
  end

  private
    def user_params
      params.require(:user).permit(:name, :dojo_location, :favorite_language, :comment)
    end
end
