class Address < ApplicationRecord
  belongs_to :city
  has_many :employee_statuses
end
