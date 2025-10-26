class Machine
  def start
    flip_switch(:on)
  end

  def stop
    flip_switch(:off)
  end

  # Further Exploaration
  # Add a private getter for @switch to the Machine class, and add a method to Machine that shows how to use that getter.
  def state
    switch
  end

  private
  attr_reader :getter
  attr_writer :switch

  def flip_switch(desired_state)
    self.switch = desired_state
  end
end


p Machine.new.start # => :on

p Machine.new.stop # => :off

p Machine.new.flip_switch # => p1_privacy.rb:24:in `<main>': private method `flip_switch' called for #<Machine:0x00000001043266f8> (NoMethodError)
