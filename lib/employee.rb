class Employee < ActiveRecord::Base
  belongs_to :store

  validates_presence_of :first_name, :last_name, :store
  validates :hourly_rate, numericality: { greater_than_or_equal_to: 40, less_than_or_equal_to: 200, only_integer: true }
  validates_associated :store
end
