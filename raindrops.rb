class Raindrops
  def self.convert(number)
    raindropspeak = { "3" => "Pling", "5" => "Plang", "7" => "Plong"}
    factor_array_int = (1..number).select { |n| (number % n).zero? }
    factor_array_str = factor_array_int.map(&:to_s)
    output = []
    i = 0
    if (factor_array_str.include? "3") || (factor_array_str.include? "5") || (factor_array_str.include? "7")
	  while i < factor_array_str.length
        raindropspeak.each do |k, v|
          if k = factor_array_str[i]
            output << raindropspeak[k]
          end
          i +=1
        end
      end
      output*""
    else
      factor_array_str.last
    end
  end
end

module BookKeeping
  VERSION = 3 # Where the version number matches the one in the test.
end


