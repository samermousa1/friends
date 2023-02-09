class Invite < ApplicationRecord
    STATUS_TYPES = {"pending" => 1, "accepted" => 2, "rejected" => 3}.freeze
    enum status: STATUS_TYPES

    validates :inviter_id, uniqueness: { scope: :invitee_id, message: "invite already sent" }

    belongs_to :user, class_name: "User", foreign_key: "inviter_id"
end
  