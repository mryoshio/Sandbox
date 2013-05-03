module M
  class C
    X = 'C_CONSTANT'
  end

  class D
    module M2
      p Module.nesting
    end
  end

  def m_method
    puts 'm_method called'
    puts ::C::X
  end

  puts M::C::X

end

o = M::C.new
p o.constant
