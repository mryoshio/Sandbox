
def add_m_to(klass)
  klass.class_eval do
    def m
      puts 'hello'
    end
  end
end

add_m_to String
'hoge'.m
