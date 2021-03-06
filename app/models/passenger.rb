class Passenger < ApplicationRecord
  belongs_to :booking
  belongs_to :flight

  before_save {self.email = email.downcase}
  validates :name, presence: true, length: {maximum: 50}
  VAILD_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  validates :email, presence: true, length: {maximum: 255}, format: {with: VAILD_EMAIL_REGEX}
end
