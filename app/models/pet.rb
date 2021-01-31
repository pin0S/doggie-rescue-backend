class Pet < ApplicationRecord
  after_save :add_default_image, on: [:create, :update]

  validates :species, presence: true

  has_one :adoption
  has_one :image_attached
  # has_one :pet_trait, dependent: :destroy
  # Logically a pet has many traits, no?
  has_many :pet_traits, dependent: :destroy

  # Need the following relationship since when we add a trait_option
  # to a pet, we need to know the trait_option's `id`
  has_many :trait_options, through: :pet_traits

  # accepts_nested_attributes_for :pet_traits
  # I led you astray here. We don't need `accepts_nested_attributes_for`
  # for pet_traits. That would only be needed if we were CREATING a brand
  # new pet trait. That's not the case here. All we're doing if
  # ASSIGNING an existing trait to a pet, which will be represented
  # in the database as a new row in the join table `pet_traits`

private def add_default_image
  unless image.attached?
    self.image.attach(io: File.open(Rails.root.join("app", "assets", "images", "dog.png")), filename: 'dog.png' , content_type: "image/png")
  end
end

end
