require "bye/version"

module Bye
  class Engine < Rails::Engine
    REMOVE_IF_PRESENT = [:try, :try!]
    initializer "bye" do |app|
      REMOVE_IF_PRESENT.each do |meth|
        Object.send(:undef_method, meth) if Object.methods.include?(meth)
      end
    end
  end
end
