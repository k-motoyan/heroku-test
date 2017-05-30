Rails.application.routes.draw do
  if Rails.env.development?
    mount GraphiQL::Rails::Engine, at: '/graphiql', graphql_path: '/graphql'
  end

  post '/graphql', to: 'graphql#execute'

  get    '*path', controller: :api, action: :index
  post   '*path', controller: :api, action: :index
  patch  '*path', controller: :api, action: :index
  put    '*path', controller: :api, action: :index
  delete '*path', controller: :api, action: :index
end
