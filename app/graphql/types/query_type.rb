class Types::QueryType < GraphQL::Schema::Object

  # queries are represented as fields
  field :allLinks, [Types::LinkType], null: false do
    # description "Return all links"
    # argument :id, ID, required: true
  end

  def all_links
    Link.all
  end
end
