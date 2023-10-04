class GreetingsController < ApplicationController
  def random_greeting
    @random_greeting = Message.order('RANDOM()').first
    render json: @random_greeting
  end
end
