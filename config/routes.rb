Rails.application.routes.draw do
  devise_for :users
  root to: "home#index"
  patch "add", to: "goals#add"
  post 'new_submit', to: 'goals#new_submit'
  post 'plan_new_submit', to: 'goals#plan_new_submit'
  post "add", to: "goals#new_submit"
  get "show_detail", to: "goals#show_detail"
  post "show_detail", to: "goals#show_detail"
  get "plan_detail", to: "plans#plan_detail"
  post "plan_detail", to: "plans#plan_detail"
  post 'new_new_plan', to: 'plans#new_new_plan'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # devise_for :trainers
  # root to: "home#index"
  # patch "capture", to: "pokemons#capture"
  # get "trainer", to: "trainers#profile"
  # patch "damage", to: "trainers#damage"
  # resources :trainers
  # get 'new', to: 'pokemons#new'
  # post 'new', to: 'pokemons#new'
  # get 'pokemons/new', to: 'pokemons#new'
  # post 'new_submit', to: 'todos#new_submit'
end
