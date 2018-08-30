class Api::GamesController < ApplicationController

  def name_all_caps_action
    your_name = params["my_name"]
    @name_upcase = your_name.upcase
    render "names_all_caps_view.json.jbuilder"
  end

  def name_with_a_action
    your_name = params["my_name"]
    if your_name == nil
      @name = "Input your name!"
    else   
      if your_name =~ /^[aA]/ #could also be if your_name[0].downcase = "a" or your_name.starts_with? check that method out.
        @name = "Your name is #{your_name} and it begins with the letter A!"
      elsif
        @name = "Your name is #{your_name} and it doesn't begin with an A!"
      end
    end
    render "name_with_a_view.json.jbuilder"
  end

  def guessing_game_action
    your_guess = params["my_guess"]
    your_guess_number = your_guess.to_i
    number = 77
    if your_guess_number < number
      @answer = "Higher!"
    elsif your_guess_number > number
      @answer = "Lower!"
    else
      @answer = "Got it!"
    end
  render "guessing_game_view.json.jbuilder"
  end
end
