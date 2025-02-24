class AnswersController < ApplicationController
  def answer
    @answers = ["I don't care, get dressed and go to work!", "Silly question, get dressed and go to work!", "Great!"]

    # Si le params contient un point d'interrogation ==> returns "Silly question, get dressed and go to work!"
    if params[:question].include?("?")
      @answer = @answers[1]
    # Si le params contient "I am going to work" ==> returns "Great!"
    elsif params[:question] == "I am going to work"
      @answer = @answers[2]
    # Else ==> returns  I don't care, get dressed and go to work!
    else
      @answer = @answers[0]
    end
  end
end
