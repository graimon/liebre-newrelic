require "liebre_newrelic/version"
require "liebre"
require "newrelic_rpm"

module LiebreNewRelic
  
  autoload :Instrumentation, 'liebre_newrelic/instrumentation'
  
end

require 'liebre_newrelic/instrumentation/consumer'
require 'liebre_newrelic/instrumentation/publisher'