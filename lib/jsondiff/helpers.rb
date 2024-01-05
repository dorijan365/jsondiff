module JsonDiff
  module Helpers
    def self.included(base)
      base.extend(ClassMethods)
    end

    module ClassMethods
      def add_op(prefix, key, value, import_id)
        { op: :add, path: "#{prefix}/#{key}", value: value, import_id: import_id }
      end

      def remove_op(prefix, key, import_id)
        { op: :remove, path: "#{prefix}/#{key}", import_id: import_id }
      end

      def replace_op(prefix, value, import_id)
        { op: :replace, path: prefix, value: value, import_id: import_id }
      end
    end
  end
end

