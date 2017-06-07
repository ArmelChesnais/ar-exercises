class Store < ActiveRecord::Base
  has_many :employees

  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: { greater_than_or_equal_to: 0, only_integer: true }

  validate :mens_or_womens_apparel

  before_destroy :validate_destroy

  def mens_or_womens_apparel
    # disabled to allow exercise 9 to go through

    unless mens_apparel.present? || womens_apparel.present?
      errors.add(:men_or_womens_apparel, "must be true")
    end
  end

  def validate_destroy
      false if self.employees.count > 0   # rails 4.0
      # false if self.employees.count > 0  # rails 5.0+
  end
end
