# frozen_string_literal: true

class Users::PasswordsController < Devise::PasswordsController
    # GET /resource/password/new
    def new
        super
    end

    # POST /resource/password
    def create
        super
    end

    # GET /resource/password/edit?reset_password_token=abcdef
    def edit
        super
    end

    # PUT /resource/password
    def update
        super
    end

    # protected

    def after_resetting_password_path_for(resource)
        sign_out_all_scopes 
        flash[:notice] = "Your password has been changed successfully"
        login_path
    end

    # The path used after sending reset password instructions
    def after_sending_reset_password_instructions_path_for(resource_name)
        login_path
    end
end
