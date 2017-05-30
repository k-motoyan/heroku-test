Types::HeaderType = GraphQL::ObjectType.define do
  name 'Header'

  field :key, !types.String
  field :value, !types.String
end
