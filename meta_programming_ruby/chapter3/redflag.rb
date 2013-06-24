
lambda {
  setups = []
  events = {}
  teardowns = []

  # store setups, eventse, teardowns
  Kernel.send :define_method, :event do |name, &block|
    events[name] = block
  end

  Kernel.send :define_method, :setup do |&block|
    setups << block
  end

  Kernel.send :define_method, :teardown do |&block|
    teardowns << block
  end

  # called when actually executed
  Kernel.send :define_method, :each_setup do |&block|
    setups.each do |setup|
      block.call setup
    end
  end

  Kernel.send :define_method, :each_event do |&block|
    events.each_pair do |name, event|
      block.call name, event
    end
  end

  Kernel.send :define_method, :each_teardown do |&block|
    teardowns.each do |teardown|
      block.call teardown
    end
  end

}.call

Dir.glob('*events.rb').each do |file|
  load file
  each_event do |name, event|
    env = Object.new # create 'clean room' object
    each_setup do |setup|
      env.instance_eval &setup
    end
    puts "ALERT: #{name}" if env.instance_eval &event
    each_teardown do |teardown|
      env.instance_eval &teardown
    end
  end
end
