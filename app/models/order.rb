class Order < ApplicationRecord
  belongs_to :user,optional: true
  belongs_to :drink,optional: true

  validates :seat, presence: true
end
