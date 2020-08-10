class QuestionsController < ActionController::Base
  def ask
  end

  def answer
    response = params[:answers]
    @answer = params[:answers]
    if response == "I am going to work"
      @answers = "Great !"
    elsif response.include?("?")
      @answers = "Silly question !"
    else
      @answers = "I don't care get dressed and return to work."
    end
  end
end
