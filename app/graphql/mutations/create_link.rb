class Mutations::CreateLink < Mutations::BaseMutation
  null true

  argument :url, String, required: true
  argument :description, String, required: true

  field :link, Types::LinkType, null: true
  field :errors, [String], null: false

  def resolve(url:, description:)
    link = Link.new(url: url, description: description)
    if link.save
      # Successful creation, return the created object with no errors
      Rails.logger.warn("Saved link #{link.id}")
      {
        link: link,
        errors: [],
      }
    else
      # Failed save, return the errors to the client
      {
        link: nil,
        errors: link.errors.full_messages
      }
    end
  end
end
