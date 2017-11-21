Rails.application.routes.draw do

  get '/welcome' => 'pages#welcome'
  root 'pages#welcome'
  get '/about' => 'pages#about'
  get '/contest' => 'pages#contest'
  get '/kitten' => 'pages#kitten'
  get '/kittens' => 'pages#kittens'
  get '/kitten/:size' => 'pages#kitten', as: 'kitten_size'
  get '/kittens/:size' => 'pages#kittens', as: 'kittens_size'
  get '/secrets/:magic_word' => 'pages#secrets', as: 'magic_word'
end
