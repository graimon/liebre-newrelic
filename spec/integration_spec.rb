require 'spec_helper'

RSpec.describe "Integration" do

  it do
    binding.pry
    
    expect(Liebre::Runner::Starter::Consumer.ancestors).to include LiebreNewRelic::Instrumentation::Consumer
    
    expect(Liebre::Publisher.ancestors).to include LiebreNewRelic::Instrumentation::Publisher
    
  end

end
