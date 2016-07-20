class GildedRose
  attr_reader :name, :quality, :days_remaining

  def initialize(name, quality, days_remaining)
    @name, @quality, @days_remaining = name, quality, days_remaining
  end

  def tick
    if @name == 'normal' && @quality > 0
      if @days_remaining > 0
        @quality -= 1
      else
        @quality -= 2
      end
    @days_remaining -= 1
    elsif @quality == 0
      @days_remaining -= 1
    end
  
    if @name == 'Aged Brie' && @quality < 50
      @days_remaining -= 1
      if quality == 49 || @days_remaining > 0
        @quality += 1
      elsif @days_remaining <= 0
        @quality += 2
      end
    elsif @quality >= 50
      @days_remaining -= 1
    end

  end
end
