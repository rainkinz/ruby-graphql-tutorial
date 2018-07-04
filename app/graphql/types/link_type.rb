class Types::LinkType < GraphQL::Schema::Object
  field :id, ID, null: false
  field :url, String, null: false
  field :description, String, null: true
end

