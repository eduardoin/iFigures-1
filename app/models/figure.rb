class Figure < ApplicationRecord
  include PgSearch
  belongs_to :user
  has_many :pictures, inverse_of: :figure, dependent: :destroy
  accepts_nested_attributes_for :pictures,
                                allow_destroy: true,
                                reject_if: :all_blank

  validates :name, :brand, :price, :address, presence: true
  validate :presence_of_main_photo
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  pg_search_scope :search_by_name_and_brand,
                  against: %i[name brand],
                  using: {
                    tsearch: { prefix: true }
                  }

  def self.random_brands(count)
    pluck(:brand).uniq.sample(count).map do |brand_name|
      Brand.new(brand_name)
    end
  end

  def main_photo
    picture = self.pictures.select { |picture| picture.main_photo == true }[0]
    if picture
      return picture.photo
    else
      placeholder_picture = "https://imgplaceholder.com/420x320/ff7f7f/333333/fa-image"
      return placeholder_picture
    end
  end

  private

  def presence_of_main_photo
    # binding.pry
    if self.pictures.select{ |picture| picture.main_photo }.blank?
      errors.add(:picture, "can't be blank")
    end
  end
end
