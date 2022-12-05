module GridHelper
  def set_columns(parking_spaces)
    case parking_spaces
    when 0..1
      "1fr"
    when 1..2
      "1fr 1fr"
    when 2..10
      "1fr 1fr 1fr 1fr"
    when 10..30
      "1fr 1fr 1fr 1fr 1fr 1fr"
    else
      "1fr 1fr 1fr 1fr 1fr 1fr 1fr"
    end
  end
end
