raindropspeak = { "3" => "Pling", "5" => "Plang", "7" => "Plong"}
factor_array_str = ["1", "2", "3"]
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
	puts output*""
else
	puts factor_array_str.last
end
