class Friend < ApplicationRecord
    belongs_to :user
    validates_presence_of :email, :first_name , class: :friend
    validates_format_of :email, with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create
end
