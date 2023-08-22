class DashboardController < ApplicationController
  def show
    @generators = Generator.alphabetical if current_user.present?
  end
end
