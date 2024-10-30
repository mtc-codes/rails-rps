class HomeController < ApplicationController
  def home
    render({ :template => "pages_templates/welcome"})
  end

  def rock
  choices = ["rock","paper","scissors"]
  play = "rock"
  counter = choices.sample

  @my_play = "We played #{play}!"
  @counter_play = "They played #{counter}!"
  @outcome = 
    if counter == play
      "We tied!"
    elsif counter = "scissors"
      "We won!"
    elsif counter = "paper"
      "We lost!"
    else
      "We lost!"
    end
    render({ :template => "pages_templates/rock"})
  end

  def paper
    choices = ["rock","paper","scissors"]
    play = "paper"
    counter = choices.sample

    @my_play = "We played #{play}!"
    @counter_play = "They played #{counter}!"
    @outcome = 
    if counter == play
      "We tied!"
    elsif counter = "rock"
      "We won!"
    elsif counter = "scissors"
      "We lost!"
    else
      "We lost!"
    end
    render({ :template => "pages_templates/paper"})
  end

  def scissors
    choices = ["rock","paper","scissors"]
  play = "scissors"
  counter = choices.sample

  @my_play = "We played #{play}!"
  @counter_play = "They played #{counter}!"
  @outcome = 
    if counter == play
      "We tied!"
    elsif counter = "paper"
      "We won!"
    elsif counter = "rock"
      "We lost!"
    else
      "We lost!"
    end
    render({ :template => "pages_templates/scissors"})
  end
end
