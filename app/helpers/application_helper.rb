module ApplicationHelper
  def put_mark(boolean)
  check_mark = "&#x2713;"
  cross_mark = "&#x2717;"

    if boolean
      check_mark
    else
      cross_mark
    end
  end

  def HTML_Entities(amenity)
    raw put_mark amenity
  end
end
