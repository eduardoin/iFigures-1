class Figure < ApplicationRecord
  belongs_to :user
  has_many :pictures, inverse_of: :figure, dependent: :destroy
  accepts_nested_attributes_for :pictures,
                                allow_destroy: true,
                                reject_if: :all_blank

  validates :name, :brand, :price, :address, presence: true
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

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
end
