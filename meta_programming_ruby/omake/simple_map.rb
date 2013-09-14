
a = ['taro', 'jiro', 'mike', 'jane']
a_powered = a.map {|v| v.upcase }
p a_powered

a_powered = a.map &:upcase
p a_powered

