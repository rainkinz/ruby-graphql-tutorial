class Types::MutationType < GraphQL::Schema::Object
  field :create_link, Types::LinkType, mutation: Mutations::CreateLink
end
