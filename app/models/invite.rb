class Invite < ApplicationRecord
    STATUS_TYPES = {"pending" => 1, "accepted" => 2, "rejected" => 3}.freeze
    enum status: STATUS_TYPES
end
  