module ItemsHelper
  def li_class_for_items(item)
    'completed' if item.complete?
  end
end

#same as form_for, link_to
#little methods that return html or strings to be used in any place in views dir
#actionview iterates through all modules to define (in helpers dir) and automatically mixes them into
#actionview scope regardless of what view is rendered
