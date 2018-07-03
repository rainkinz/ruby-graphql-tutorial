class Types::LinkType < GraphQL::Schema::Object
  field :id, ID, null: false
  field :url, String, null: false
  field :description, String, null: true
end

# Types::LinkType = GraphQL::ObjectType.define do
#   # This type is named Link
#   name 'Link'

#   # it has the following fields
#   field :id, !types.ID
#   field :url, !types.String
#   field :description, !types.String
# end
