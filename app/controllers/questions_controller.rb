class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
     if @question.match('I am going to work')
       @answer = 'Great!'
     elsif @question.match(/.*[?]/)
       @answer = 'Silly question, get dressed and go to work!'
     elsif @question == ''
       @answer = 'Say something!'
     else
       @answer = "I don't care, get dressed and go to work!"
     end
  end
end
