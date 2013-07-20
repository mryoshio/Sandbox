class Book
  def title; end
  def subtitle; end
  def lend_to(user)
    puts "Lending to #{user}"
  end

  def self.obsolete(old_m, new_m)
    define_method(old_m) do |*args, &block|
      warn "WARNING: #{old_m}() is deprecated. Use #{new_m}()."
      send(new_m, *args, &block)
    end
  end

  obsolete :GetTitle, :title
  obsolete :LEND_TO_USER, :lend_to
  obsolete :title2, :subtitle
end

b = Book.new
b.LEND_TO_USER('bill')
