module ApplicationHelper
  def put_mark(boolean)
    if boolean
      check_mark
    else
      cross_mark
    end
  end

  def HTML_Entities(amenity)
    raw put_mark amenity
  end

  def check_mark
    "&#x2713;"
  end

  def cross_mark
    "&#x2717;"
  end
end
