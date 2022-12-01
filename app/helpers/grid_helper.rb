module GridHelper
  def set_columns(parking_spaces)
    case parking_spaces
    when 0..4
     "1fr 1fr 1fr 1fr"
    when 4..10
      "1fr 1fr"
    when 10..19
      "1fr 1fr 1fr"
    when 20..30
      "1fr 1fr 1fr 1fr 1fr"
    else
      "1fr 1fr 1fr 1fr 1fr 1fr"
    end
  end
end
