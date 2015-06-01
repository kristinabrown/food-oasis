class Bulletin < ActiveRecord::Base
  has_one :map_marker
  belongs_to :user
end
