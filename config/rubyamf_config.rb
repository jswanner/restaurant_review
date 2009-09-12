require 'app/configuration'
module RubyAMF
  module Configuration
    ClassMappings.assume_types = true

    ClassMappings.register(
      :actionscript => 'Restaurant',
      :ruby => 'Restaurant',
      :type => 'custom')
  end
end
