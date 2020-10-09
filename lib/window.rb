class UIComponent
  @name
  def initialize(name='')
    @name = name
  end
end

class Container < UIComponent
  @children

  def initialize(name='')
    super(name)
    @children = []
  end

  def addChildren(values)
    @children = @children + values
  end

  def printChilren
    @children.each do |c|
      c.print
    end
  end

  def print
    printSelf
    printChilren
  end
end

class Window < Container
  def printSelf
    puts "print WinForm(#{@name})"
  end
end

class Picture < UIComponent
  def print
    puts "print Picture(#{@name})"
  end
end

class Button < UIComponent
  def print
    puts "print Button(#{@name})"
  end
end

class Frame < Container
  def printSelf
    puts "print WinForm(#{@name})"
  end
end

class Label < UIComponent
  def print
    puts "print Label(#{@name})"
  end
end

class TextBox < UIComponent
  def print
    puts "print TextBox(#{@name})"
  end
end

class PasswordBox < UIComponent
  def print
    puts "print PasswordBox(#{@name})"
  end
end

class CheckBox < UIComponent
  def print
    puts "print CheckBox(#{@name})"
  end
end

class LinkLabel < UIComponent
  def print
    puts "print LinkLabel(#{@name})"
  end
end

