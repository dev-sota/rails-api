# frozen_string_literal: true

class AdminUser < ApplicationRecord
  has_secure_password
  has_secure_token
end
