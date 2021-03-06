class DishResource < ApplicationResource
  attribute :id, :integer, writable: false
  attribute :created_at, :datetime, writable: false
  attribute :updated_at, :datetime, writable: false
  attribute :name, :string
  attribute :cuisine_id, :integer

  # Direct associations

  has_many   :bookmarks

  belongs_to :cuisine

  # Indirect associations

  many_to_many :specialists,
               resource: VenueResource

  many_to_many :fans,
               resource: UserResource
end
