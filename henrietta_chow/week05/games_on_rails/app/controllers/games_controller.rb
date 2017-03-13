class GamesController < ApplicationController

  def random (number)
    random_index = Random.rand(number)
  end

  def answer
    answers_arr = ["Without a doubt", "Most likely", "Outlook is good", "Yes", "Signs point to yes", "Ask again later", "Better not tell you now", "Concentrate and ask again", "Don't count on it", "My sources say no", "Outlook not so good", "Very doubtful"]

    @answer = answers_arr.sample #[random(12)]
  end

  def guess
    @secret_number = random(10)
    if params[:guess].to_i == @secret_number
      @secret_number_result = "Player wins!"
    else
      @secret_number_result = "Try again"
    end
  end

  def rock_paper_scissors_play
    throw_arr = ["rock", "paper", "scissors"]
    @server_throw = throw_arr[random(3)]
    if params[:throw] == @server_throw
      @rock_paper_scissors_result = "Player wins!"
    else
      @rock_paper_scissors_result = "Computer wins!"
    end
  end

end
