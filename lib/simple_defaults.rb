module SimpleDefaults
  extend ActiveSupport::Concern

  included do
    after_initialize :set_default_attributes, prepend: true, if: :new_record?
  end

  def defaults
    {}
  end

  protected
    def set_default_attributes
      defaults.each do |key, value|
        value = value.call if value.respond_to?(:call)
        !send(key).nil? || send("#{key}=", value)
      end
    end
end

ActiveRecord::Base.send :include, SimpleDefaults
