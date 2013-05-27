
class DataSource

  def initialize
    @cpu = 'Celeron 2.8GHz'
    @mouse = 'Microsoft Odd Mouse'
    @keyboard = 'OWL-KB119GM'
  end

  def get_cpu_info(id)
    @cpu
  end

  def get_mouse_info(id)
    @mouse
  end

  def get_keyboard_info(id)
    @keyboard
  end

  def get_cpu_price(id)
    (Random.rand() * 500).floor()
  end

  def get_mouse_price(id)
    (Random.rand() * 500).floor()
  end

  def get_keyboard_price(id)
    (Random.rand() * 500).floor()
  end

end
