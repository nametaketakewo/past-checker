module Past
  def define_past_checker(name)
    attribute = self.class.checker_attribute(name)
    return false if attribute.nil?
    self.class.class_eval do
      define_method name do
        it = send(attribute)
        return nil if it.nil?
        (Time.try(:zone).try(:now) || Time.now) > it
      end
    end
  end

  def method_missing(name, *args, &block)
    return send(name) if define_past_checker(name) && respond_to?(name)
    super
  end

  def respond_to_missing?(name, *args, &block)
    super unless name.to_s.last == '?'
    return true unless self.class.checker_attribute(name).nil?
    super
  end

  module Checker
    def checker_attribute(name)
      return 'll_be_' + name.to_s.chop if ll_attribute_presence?(name)
      return 'will_be_' + name.to_s.chop if will_attribute_presence?(name)
      return 'll_be_' + name.to_s.chop + '_at' if ll_at_attribute_presence?(name)
      return 'will_be_' + name.to_s.chop + '_at' if will_at_attribute_presence?(name)
      nil
    end

    def ll_attribute_presence?(name)
      return true if has_attribute?('ll_be_' + name.to_s.chop)
      false
    end

    def will_attribute_presence?(name)
      return true if has_attribute?('will_be_' + name.to_s.chop)
      false
    end

    def ll_at_attribute_presence?(name)
      return true if has_attribute?('ll_be_' + name.to_s.chop + '_at')
      false
    end

    def will_at_attribute_presence?(name)
      return true if has_attribute?('will_be_' + name.to_s.chop + '_at')
      false
    end
  end
  extend Checker
  def self.included(klass)
    klass.extend Checker
  end
end

ActiveRecord::Base.class_eval { include Past }
