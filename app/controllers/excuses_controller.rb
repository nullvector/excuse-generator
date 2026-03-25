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
    "I was on a very important quest and couldn't be disturbed.",
    "My alarm clock is in a different time zone.",
    "I was distracted by a very interesting cloud.",
    "My coffee hadn't kicked in and I made all my decisions in that window.",
    "I was busy calculating exactly how many days until the weekend.",
    "The dog looked at me with such disappointment I had to comfort him for hours.",
    "I accidentally signed up for a mime class and couldn't call for help.",
    "I was trying to remember if I left the oven on. I hadn't. Still took 3 hours.",
    "A pigeon stole my to-do list.",
    "I got personally offended by a notification and needed time to recover.",
  ]

  def index
    @excuse = EXCUSES.sample
  end
end
