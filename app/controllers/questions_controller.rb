class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @answer = 'default'
    @question = params[:question]
    if params[:question] == 'I am going to work'
      @answer = 'Great!'
    elsif params[:question][-1] == '?'
        @answer = 'Silly question, get dressed and go to work!!'
    else
        @answer = "I don't care, get dressed and go to work!"
    end
  end
end
