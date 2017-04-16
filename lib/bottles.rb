class Bottles

  def song
    verses(99, 0)
  end

  def verses(start, end_num)
    (end_num..start).to_a.reverse.map do |num|
      verse(num)
    end.join("\n")
  end

  def verse(num)
      <<-STRING
#{bottles_of_beer(num).capitalize} on the wall, #{bottles_of_beer(num)}.
#{direction(num)}, #{bottles_of_beer(new_num(num))} on the wall.
      STRING
  end

  private

  def direction(num)
    if num == 0
      "Go to the store and buy some more"
    elsif num == 1
      "Take it down and pass it around"
    else
      "Take one down and pass it around"
    end
  end

  def new_num(num)
    if num > 0
      num - 1
    else
      99
    end
  end

  def bottles_of_beer(num)
    if num == 1
      "1 bottle of beer"
    elsif num == 0
      "no more bottles of beer"
    else
      "#{num} bottles of beer"
    end
  end
end
