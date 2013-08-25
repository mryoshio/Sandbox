
module CheckedAttributes
  def self.included(klass)
    klass.extend ClassMethods
  end

  module ClassMethods
    def attr_checked(attr, &validation)
      define_method attr do
        instance_variable_get(:@attr)
      end

      define_method "#{attr}=" do |value|
        raise 'Invalid attribute' unless value
        raise 'invalid attribute' unless validation.call(value)
        instance_variable_set(:@attr, value)
      end
    end
  end
end
