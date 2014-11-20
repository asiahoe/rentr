module ApplicationHelper
  def mark(boolean)
    if boolean
      "&#x2713;"
    else
      "&#x2717;"
    end
  end
end
