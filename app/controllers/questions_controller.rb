class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @answer = ' '
    @user_input = params[:question]


    if @user_input.include?("?")
     @answer = "Silly question, get dressed and go to work!"
    elsif @user_input == "I am going to work right now!"
      @answer = "great!"
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
