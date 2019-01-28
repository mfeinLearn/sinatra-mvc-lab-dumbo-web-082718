require_relative 'config/environment'
require_relative "models/piglatinizer.rb"

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/' do
    # latinizer_from_user = params[:latinizer]
    piglatinizer_obj = PigLatinizer.new
    @analyzed_words = piglatinizer_obj.piglatinize(params[:latinizer])
    erb :user_input
  end

  post '/piglatinize' do
    erb :user_input
  end


end
