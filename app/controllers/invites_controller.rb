class InvitesController < ApplicationController
    before_action :authenticate_user! , only: [:create]
  
    def create
      invite = Invite.new
      invite.inviter_id = current_user.id
      invite.invitee_id = params["invitee_id"]
      invite.status = 1
      invite.save!

      redirect_to root_path
    end
  
    
  
  end
  