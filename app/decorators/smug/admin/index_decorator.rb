module Smug
  module Admin
    class IndexDecorator < Draper::Decorator
      delegate_all

      LOCALIZABLE_CLASSES = [Date, ActiveSupport::TimeWithZone]
      TRUNCATABLE_CLASSES = [String]

      def render_attr(attr)
        output = model.send(attr)

        if output.class.in?(LOCALIZABLE_CLASSES)
          return h.l(output)
        end

        if output.class.in?(TRUNCATABLE_CLASSES)
          return h.truncate(output, length: 140)
        end

        output
      end
    end
  end
end
