class Types::QueryType < GraphQL::Schema::Object

  # queries are represented as fields
  field :allLinks, [Types::LinkType], null: false do
    # description "Return all links"
    # argument :id, ID, required: true
  end

  field :link, Types::LinkType, null: true do
    description "Find a link by id"
    argument :id, ID, required: true
  end

  def link(id:)
    Link.find(id)
  end

  def all_links
    Link.all
  end
end
