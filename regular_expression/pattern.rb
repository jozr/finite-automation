Dir["#{File.dirname(__FILE__)}/squat/**/*.rb"].each {|file| require file }

module Pattern
  def bracket(outer_precedence)
    if precedence < outer_precedence
      "(" + to_s + ")"
    else
      to_s
    end
  end

  def inspect
    "/#{self}"
  end
end

__END__

pattern = 
  Repeat.new(
    Choose.new(
      Concatenate.new(Literal.new("a"), Literal.new("b")),
      Literal.new("a")
    )
  )
