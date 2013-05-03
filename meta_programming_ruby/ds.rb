
class DataSource
  def initialize
    @cpu = 'Celeron 2.8GHz'
    @mouse = 'Microsoft Odd Mouse'
  end

  def get_cpu_info(id)
    @cpu
  end

  def get_mouse_info(id)
    @mouse
  end

  def get_cpu_price(id)
    (Random.rand() * 100).floor()
  end

  def get_mouse_price
    (Random.rand() * 100).floor()
  end

end
