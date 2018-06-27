# frozen_string_literal: true

Rails.application.routes.draw do
  get 'paper/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'static#index'

  get 'about', to: 'static#about'
  get 'oneenglishword', to: 'one_english_word#index'
  resources :static, only: %i[index]
  resources :papers, only: %i[index]

  get 'distributedxml', to: redirect('https://www.world-academy-of-science.org')
  get 'jisarcomparison', to: redirect('http://www.jisar.org/2014-7/N2/JISARv7n2p39.html')
  get 'jisartaxonomy', to: redirect('http://www.jisar.org/2014-7/N2/JISARv7n2p4.html')
  get 'conisarcomparison', to: redirect('http://proc.conisar.org/2013/pdf/2813.pdf')
  get 'conisartaxonomy', to: redirect('http://proc.conisar.org/2013/pdf/2822.pdf')
end
