class Types::MutationType  < GraphQL::Schema::Object
  field :create_link, Types::LinkType, mutation: Mutations::CreateLink
 # field :updateLink, Mutations::UpdateLink.field
end
