class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @user_input_ask = params[:ask]
    @coach_answer = coach(@user_input_ask)
  end

  def coach(user_input_ask)
    if user_input_ask == 'I am going to work'
      return 'Great!'
    elsif user_input_ask[-1] == '?'
      return 'Silly question, get dressed and go to work!'
    else
      return "I don't care, get dressed and go to work!"
    end
  end

end
