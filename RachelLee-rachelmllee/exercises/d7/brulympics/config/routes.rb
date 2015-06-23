Rails.application.routes.draw do
  get 'home/index'
  root 'home#index'

  get '/battle/:battle_type/:fighter_one/:fighter_two', 
  to: 'battle#start', as: 'battle_start'
  get '/result/:battle_type/:fighter_one/:fighter_two/',
  to: 'battle#result', as: 'battle_result'
end
