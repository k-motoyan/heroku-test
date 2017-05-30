Types::QueryType = GraphQL::ObjectType.define do
  name "Query"

  field :end_points, types[!Types::EndPointType] do
    resolve ->(obj, args, ctx) {
      EndPoint.includes(:headers).all
    }
  end
end
