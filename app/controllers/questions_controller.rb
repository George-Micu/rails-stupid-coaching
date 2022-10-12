class QuestionsController < ApplicationController
  def ask; end

  def answer
    @answers = ['Great!', 'Silly question, get dressed and go to work!', "I don't care, get dressed and go to work!"]

    question = params[:question]

    @answers = if question.downcase == 'i am going to work'
                 @answers.first
               elsif question.end_with?('?')
                 @answers[1]
               else
                 @answers.last
               end
  end
end
