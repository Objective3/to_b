class String
  def to_b
    return false if self == ''
    return false if self == '0'
    true
  end
end

class NilClass
  def to_b
    return false
  end
end

class TrueClass
  def to_b
    return true
  end
end

class FalseClass
  def to_b
    return false
  end
end

class Object
  def to_b
    return true
  end
end

class Numeric
  def to_b
    self != 0
  end
end
