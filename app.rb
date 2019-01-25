require_relative 'config/environment'
require_relative "models/piglatinizer.rb"

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/' do
    # latinizer_from_user = params[:latinizer]
    @analyzed_words = PigLatinizer.new(params[:latinizer])
    erb :user_input
  end


end
