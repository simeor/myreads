class Book < ApplicationRecord
  belongs_to :category
  has_many :readings
  validates :title, uniqueness: true, presence: true
  validates :author, presence: true
  validates :summary, presence: true
  validates :year, presence: true
end
