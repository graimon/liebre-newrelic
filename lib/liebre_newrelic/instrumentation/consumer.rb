require 'new_relic/agent/method_tracer'

module LiebreNewRelic
  module Instrumentation
    
    module Consumer
      def self.included(base)
        
        base.class_eval do
          include NewRelic::Agent::Instrumentation::ControllerInstrumentation
          
          alias_method :orig_call_consumer, :call_consumer
          
          def call_consumer payload, meta
            NewRelic::Agent.set_transaction_name "#{klass.name}/consume"
            orig_call_consumer payload, meta
          end
          add_transaction_tracer :call_consumer, :category => :task
          
        end
        
      end
    
    end
    
  end
end

Liebre::Runner::Starter::Consumer.send :include, LiebreNewRelic::Instrumentation::Consumer