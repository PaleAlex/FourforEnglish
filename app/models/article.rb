class Article < ApplicationRecord

  validates :name, presence: true
  validates :subject, presence: true
  validates :message, presence: true
  validates :check, presence: true, numericality: { equal_to: 4 }

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: {maximum: 105}, format: {with: VALID_EMAIL_REGEX}


end
