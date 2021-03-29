# frozen_string_literal: true

Rails.application.routes.draw do
  get 'profile/show'
  get 'profile/create'
  get 'profile/update'
  get 'profile/destroy'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
