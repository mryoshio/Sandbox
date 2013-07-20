class String
  alias :real_length :length

  def length
    real_length > 5 ? 'long' : 'short'
  end
end

'WAR and PEACE'.length
'war and peace'.real_length

