Types::EndPointType = GraphQL::ObjectType.define do
  name 'EndPoint'

  field :name, !types.String
  field :path, !types.String
  field :method, !types.String do
    resolve ->(obj, args, ctx) { obj.http_method_string }
  end
  field :response, !types.String
  field :proxyable, !types.Boolean
  field :headers, types[!Types::HeaderType]
end
