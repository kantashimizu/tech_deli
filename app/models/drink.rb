class Drink < ApplicationRecord
  belongs_to :order,optional: true
end
