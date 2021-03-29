# frozen_string_literal: true

Rails.application.routes.draw do
  get 'sessions/create'
  get 'sessions/destroy'
  # get 'profile/show'
  # get 'profile/create'
  # get 'profile/update'
  # get 'profile/destroy'
  resource :profile, controller: 'profile'
  devise_for :users

  # devise_scope :user do
  #   get 'login', to: 'devise/sessions#new'
  #   get 'signup', to: 'devise/registrations#new'
  # end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
