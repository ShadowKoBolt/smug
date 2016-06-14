module Smug
  module Admin
    class BaseController < ApplicationController
      layout "smug/admin"

      before_action :authenticate_administrator!
    end
  end
end
