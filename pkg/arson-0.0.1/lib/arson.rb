module Arson
  def self.included(base)
    base.extend(ClassMethods)
  end
  module ClassMethods
    def arson
      class_eval <<-EOC
        @@arson_validations = {}

        def to_arson(class_name=nil)
          @class_name = class_name || self.class.to_s
          self.valid?
          ActiveSupport::JSON.encode({@class_name=>instance_values.update("arson_validations"=>@@arson_validations)})
        end

        protected

        def self.validates_presence_of(*attr_names)
          add_arson_validation("presence",attr_names.clone)
          super
        end

        def self.validates_format_of(*attr_names)
          add_arson_validation("format",attr_names.clone)
          super
        end

        def self.add_arson_validation(validation, configuration)
          validation_options = configuration.extract_options!
          method = configuration.flatten.to_s
          @@arson_validations[method] ||= []
          @@arson_validations[method] << {validation=>validation_options}
        end
      EOC
    end
  end
end
ActiveRecord::Base.send :include, Arson
