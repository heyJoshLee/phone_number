class PhoneNumber
  attr_accessor :number
  @@invalid = "0000000000"

  def initialize(input)

    if input =~ /[a-zA-Z]/
      @number = @@invalid
    else
      @number = input.gsub(/\D/, "")
      @number[0] = "" if @number =~ /^1\d{10}/
      @number = @@invalid if @number.length != 10
    end
  end

  def area_code
    @number[0..2]
  end

  def to_s
    "(" + @number[0..2] + ") " + @number[3..5] + "-" + @number[6..-1]
  end

end
