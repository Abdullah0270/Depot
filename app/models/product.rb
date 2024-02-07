class Product < ApplicationRecord
  validates :title, :description, presence: true
  validates :price, numericality: { greater_than_or_equal_to: 0.01 }
  validates :title, uniqueness: true
  validates :image_url, presence: true
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

