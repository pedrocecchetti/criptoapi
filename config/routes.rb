Rails.application.routes.draw do
  # For details on the DSL available within this file, see 
  namespace 'api' do
    namespace 'v1' do
      get '/criptoinfo' , to: 'cripto_info#index'
      get '/updatedatabase', to: 'cripto_info#updatecriptoinfo'
    end
  end
end
