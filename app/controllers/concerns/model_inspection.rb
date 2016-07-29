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

    def nested_associations
      @nested_associations ||= model.reflect_on_all_associations.collect do |association|
        return unless association.is_a? ActiveRecord::Reflection::HasManyReflection
        return unless model.new.respond_to?("#{association.plural_name}_attributes=")
        association
      end.compact
    end

    def index_attrs
      model.persistable_attribute_names - %w{ id updated_at created_at }
    end

    def show_attrs
      model.persistable_attribute_names
    end

    def edit_attrs
      model.persistable_attribute_names - %w{ id updated_at created_at }
    end

    def input_mappings
      { }
    end
  end
end
