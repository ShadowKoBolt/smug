require "active_support/concern"

module  ModelInspection
  extend ActiveSupport::Concern

  class_methods do
    def model
      controller_name.classify.constantize
    end

    def model_name
      model.model_name
    end
  end
end
