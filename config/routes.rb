Rails.application.routes.draw do
  get 'main/index'
  get 'result' => 'main#survey_result'

  post 'process' => 'main#process_form'

  root 'main#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
