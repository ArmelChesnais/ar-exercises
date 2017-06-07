class Store < ActiveRecord::Base
  has_many :employees

  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: { greater_than_or_equal_to: 0, only_integer: true }

  validate :mens_or_womens_apparel

  def mens_or_womens_apparel
    unless mens_apparel.present? || womens_apparel.present?
      errors.add(:men_or_womens_apparel, "must be true")
    end
  end
end
