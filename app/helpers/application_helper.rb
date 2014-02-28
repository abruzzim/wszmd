module ApplicationHelper
  # Return the full title on a per-page basis.
  def full_title(page_title)
    base_title = "Wendy Ziecheck, M.D."
    home_page_title = "Internal Medicine"
    if page_title.empty?
      "#{base_title} | #{home_page_title}"
    else
      "#{base_title} | #{page_title}"
    end
  end
end
