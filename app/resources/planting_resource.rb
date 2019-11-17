class PlantingResource < BaseResource
  immutable

  has_one :garden
  has_one :crop
  # has_one :owner, class_name: 'Member'
  has_many :photos
  has_many :harvests

  attribute :slug, :planted_at, :finished, :finished_at, :quantity, :description, :sunniness, :planted_from

  # Predictions
  # attribute :expected_lifespan
  # attribute :finish_predicted_at
  # attribute :first_harvest_date
  # attribute :last_harvest_date

  filter :slug
  filter :crop
  filter :planted_from
  filter :garden
  filter :owner
  filter :finished

  # attribute :percentage_grown
  # def percentage_grown
  #   @model.percentage_grown
  # end

  # attribute :crop_name
  # def crop_name
  #   @model.crop.name
  # end

  # attribute :thumbnail
  # def thumbnail
  #   @model.default_photo&.thumbnail_url
  # end
end
