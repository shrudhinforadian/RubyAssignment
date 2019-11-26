class Temperature
  def initialize(key, cel)
    @cel = cel.to_i
    @key = key
  end

  def convert(key, cel)
    @cel = cel.to_i
    @key = key
    @far = (@cel * 9 / 5) + 32
    "#{@key} | #{@cel} degrees C | #{@far} degrees F "
  end
end
temperature_cel = { 'Sun' => '', 'Mon' => '', 'Tue' => '', 'Wed' => '', 'Thu' => '', 'Fri' => '', 'Sat' => '' }
temperature_cel.each do |key, _value|
  puts "Temperature on #{key} (in celsius):"
  cel = gets
  temperature_cel[key] = cel
end
temperature_cel.each do |key, value|
  cel = temperature_cel[key]
  far = Temperature.new(key, value)
  puts far.convert(key, value)
end
