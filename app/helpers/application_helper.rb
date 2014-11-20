module ApplicationHelper

CHECK_MARK = "&#x2713;"
CROSS_MARK = "&#x2717;"

  def check_amenity(amenity)
    if exists?(amenity)
      place_check
    else
      place_cross
    end
  end

  def exists?(amenity)
    amenity
  end

  def place_check
    raw CHECK_MARK
  end

  def place_cross
    raw CROSS_MARK
  end
end
