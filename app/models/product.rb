class Product < ApplicationRecord
  validates :description, length: { maximum: 1500, message: "Maximum word count exceeded. Please limit your input to 1500 words." }
  validates :price, numericality: { greater_than_or_equal_to: 0.01 }
  validates :title, uniqueness: true
  validates :image_url, allow_blank: true, format: { with:
                                                       %r{\.(gif|jpg|png)\z}i,
                                                     message: 'must be a URL for GIF, JPG or PNG image.'
  }
=begin

  validate :image_file_format

  private

  def image_file_format
    return unless image.attached?

    unless image.content_type.in?(%w(image/jpeg image/png image/gif))
      errors.add(:image, "must be a JPEG, PNG, or GIF file")
    end
  end
=end
end

