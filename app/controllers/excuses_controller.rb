class ExcusesController < ApplicationController
  EXCUSES = [
    "My cat walked across my keyboard and deleted everything.",
    "I was abducted by aliens but they brought me back because I was too annoying.",
    "A squirrel stole my keys and I had to negotiate.",
    "I got stuck in a revolving door for 45 minutes.",
    "My horoscope specifically told me not to do that today.",
    "I was busy teaching my houseplants to speak.",
    "I thought it was a leap year and had an extra day.",
    "My GPS took me to a parallel dimension.",
    "I was voted 'most likely to forget' in high school and I'm just living up to it.",
    "A wizard turned me into a newt. I got better.",
  ]

  def index
    @excuse = EXCUSES.sample
  end
end
