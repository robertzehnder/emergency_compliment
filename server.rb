require "sinatra"
# require "bundler/setup"
require 'sinatra/reloader'
require 'pry'

# require 'erb'

compliments = [
  "Your instructors love you",
  "High five = ^5",
  "Is it Ruby Tuesday yet?",
  "It's almost beer o'clock",
  "The Force is strong with you"
]


colors = ["#FFBF00", "#0080FF","#01DF3A","#FF0080"]

get "/" do

  @compliment = compliments.sample
  @color = colors.sample
  erb :compliment
  # 'boom'
  # erb :compliment
end

get "/:name" do
  @color = colors.sample
  @greeting = "Yo #{params[:name]}..."
  @compliment = compliments.sample
  erb :compliment
  # 'boom'
  # erb :compliment
end

post '/' do
  # params = {:compliment =>}
  compliments.push(params[:xxcompliment])
  # "Testing my #{params[:compliment]}"
  redirect "/"
end
