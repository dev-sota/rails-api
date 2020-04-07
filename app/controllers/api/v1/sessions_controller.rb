# frozen_string_literal: true

class Api::V1::SessionsController < ApplicationController
  def create
    %i[email password].each do |item|
      return render_error("Please set #{item}", 400) if params[item].blank?
    end

    admin_user = AdminUser.find_by(email: params[:email])
    result = admin_user.authenticate(params[:password])

    render json: result.token
  end

  private

  def render_error(msg = nil, status = 401)
    render json: { error: "Access Denied: #{msg}." }, status: status
  end
end
