class Employee < ActiveRecord::Base
  belongs_to :store

  validates_presence_of :first_name, :last_name, :store
  validates :hourly_rate, numericality: { greater_than_or_equal_to: 40, less_than_or_equal_to: 200, only_integer: true }
  validates_associated :store

  after_create :create_password
  # before_save :create_password  # => would re-write a new password each time a change was made and saved to the entry

  private

  def create_password
    self.password = 8.times.map { [*'0'..'9', *'a'..'z', *'A'..'Z'].sample }.join
    self.save
  end

end
