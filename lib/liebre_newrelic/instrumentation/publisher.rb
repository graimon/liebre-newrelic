require 'new_relic/agent/method_tracer'

module LiebreNewRelic
  module Instrumentation
    
    module Publisher
      def self.included(base)
        
        base.class_eval do
          include ::NewRelic::Agent::MethodTracer
          
          add_method_tracer :enqueue
          add_method_tracer :enqueue_and_wait
        end
        
      end
    end
    
  end
end

Liebre::Publisher.send :include, LiebreNewRelic::Instrumentation::Publisher