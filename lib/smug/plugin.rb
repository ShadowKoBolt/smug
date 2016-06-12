module Smug
  class Plugin
    attr_accessor :controller_class

    class << self
      def all
        return @all if @all
        Rails.application.eager_load!
        controller_classes = ObjectSpace.each_object(::Class).select do |klass|
          klass < Smug::Admin::CrudController
        end
        @all = controller_classes.collect do |controller_class|
          plugin = Smug::Plugin.new
          plugin.controller_class = controller_class
          plugin
        end
      end
    end

    def model_name
      controller_class.model_name
    end

    def route_key
      controller_class.model_name.route_key
    end

    def route_options
      controller_class.route_options
    end
  end
end
