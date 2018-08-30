Rails.application.routes.draw do
  namespace :api do 
    get "/name_all_caps_url" => 'games#name_all_caps_action'
    get "/name_with_a_url" => 'games#name_with_a_action'
    get "/guessing_game_url" => 'games#guessing_game_action' # string query
    get "/guessing_game_url/:my_guess" => 'games#guessing_game_action' #URL segment
    # get "/guessing_game_segment_url/:my_guess" => 'games#guessing_game_segment_action'
  end
end
