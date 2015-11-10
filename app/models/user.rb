#
class User < ActiveRecord::Base
  include Authentication
  has_many :entries
  has_many :pressures, through: :entries
end
