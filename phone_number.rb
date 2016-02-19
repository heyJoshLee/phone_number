class PhoneNumber
  attr_accessor :number
  def initialize(input)

    if input =~ /[a-zA-Z]/
      @number = "0000000000"
    else
      @number = input.gsub(/\D/, "")
      if @number.length == 11 && @number[0] == "1"
        @number[0] = ""
      end
      if @number.length != 10
        @number = "0000000000"
      end
    end
  end

  def area_code
    @number[0..2]
  end

  def to_s
    "(" + @number[0..2] + ") " + @number[3..5] + "-" + @number[6..9]
  end

end
