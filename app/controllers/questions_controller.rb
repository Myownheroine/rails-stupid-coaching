class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @message = params[:message]
    if @message == 'I am going to work right now!'
      @answer = 'Great !'
    elsif @message.include?('?')
      @answer = 'Silly question, get dressed and go to work!'
    else
      @answer = 'I don\'t care, get dressed and go to work!'
    end
    # render 'questions/answer.html.erb'
  end
end
