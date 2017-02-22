require 'new_relic/agent/method_tracer'

module LiebreNewRelic
  module Instrumentation
    
    module Consumer
      def self.included(base)
        
        base.class_eval do
          include NewRelic::Agent::Instrumentation::ControllerInstrumentation
          
          add_transaction_tracer :call_consumer, :name => "call_consumer", :category => :task
        end
        
      end
    
    end
    
  end
end

Liebre::Runner::Starter::Consumer.send :include, LiebreNewRelic::Instrumentation::Consumer