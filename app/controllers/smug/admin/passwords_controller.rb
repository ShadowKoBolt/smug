module Smug
  module Admin
    class PasswordsController < Devise::PasswordsController
      layout "smug/admin_no_nav"
    end
  end
end
