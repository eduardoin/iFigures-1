class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :figure
end
