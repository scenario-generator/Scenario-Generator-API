# frozen_string_literal: true

# Inheritable controller that requires current_user to be present
class AuthenticatedController < ApplicationController
  before_action :authenticate_user!
end
