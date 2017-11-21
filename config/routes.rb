Rails.application.routes.draw do

  get '/welcome' => 'pages#welcome'
  get '/' => 'pages#welcome'
  get '/about' => 'pages#about'
  get '/contest' => 'pages#contest'
  get '/kitten' => 'pages#kitten'
  get '/kittens' => 'pages#kittens'
  get '/kitten/:size' => 'pages#kitten'
  get '/kittens/:size' => 'pages#kittens'
  get '/secrets/:magic_word' => 'pages#secrets'
end
