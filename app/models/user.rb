class User < ActiveRecord::Base
  has_many :bulletins
end
