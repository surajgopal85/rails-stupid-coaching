class QuestionsController < ApplicationController
  def home
  end

  def ask
  end

  def answer
    @user_answer = params[:reply]
    p @user_answer
    if @user_answer.end_with?('?')
      @coach_answer = 'Silly question, get dressed and go to work!'
    elsif @user_answer == 'I am going to work'
      @coach_answer = 'Great!'
    else
      @coach_answer = "I don't care, get dressed and go to work!"
    end

  end
end
