module Smug
  class Administrator < ActiveRecord::Base
    devise :database_authenticatable, :recoverable, :rememberable, :trackable
  end
end
