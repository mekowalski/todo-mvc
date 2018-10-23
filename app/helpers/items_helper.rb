module ItemsHelper
  def li_class_for_item(item)
    'completed' if item.complete?
  end

  def li_for_item(item)
    content_tag_for :li, item, class: li_class_for_item(item) do
    #what goes in here, can't inject all the html in here
      yield
    end
  end
end
