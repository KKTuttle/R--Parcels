class Parcel
  define_method(:initialize) do |width, length, height, weight, speed|
    @width = width
    @length = length
    @height = height
    @weight = weight
    @speed = speed
  end

  define_method(:volume) do
    @volume = @length.*@width.*@height
  end

  define_method(:cost_to_ship) do
    base_price = 5
    volume_chart = self.volume()
    if volume_chart.>(4)
      base_price += 5
    end
    if @weight.>5
      weight_surcharge = (@weight-5)*2
      base_price += weight_surcharge
    end
    if @speed == 1
      base_price += base_price.*(0.5)
    elsif @speed == 2
      base_price += base_price.*(0.25)
    end
    base_price
  end
end
