# == Schema Information
#
# Table name: users
#
#  id              :bigint           not null, primary key
#  name            :string
#  email           :string
#  password_digest :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  role            :integer          default("regular")
#
class User < ApplicationRecord
  has_secure_password
  validates :name, presence: true
  validates :email, uniqueness: true
  validates :password, presence: true
  enum :role, %i[regular admin], default: :regular, validate: true

  acts_as_api

  api_accessible :public do |template|
    template.add :id
    template.add :name
    template.add :email
  end
end
