module DeviseHelper
  # A simple way to show error messages for the current devise resource. If you need
  # to customize this method, you can either overwrite it in your application helpers or
  # copy the views to your application.
  #
  # This method is intended to stay simple and it is unlikely that we are going to change
  # it to add more behavior or options.

  #devise_error_messages es usado como variable en MedicNITE_p1/app/views/devise para controlar los errores en cada vista
  def devise_error_messages!
    #Retorna nada si resource.error está vacio
    return "" if resource.errors.empty?

    sentence = I18n.t("errors.messages.not_saved",
                      :count => resource.errors.count,
                      :resource => resource.class.model_name.human.downcase)
    messages = resource.errors.full_messages.map { |msg| content_tag(:li, msg == 'E-mail no encontrado en el sistema.' ? 'The emaasdasdil address you entered could not be found. Please try again with other information.' : msg) }.join

    html = <<-HTML
    <div id="error_explanation">
      <h2>#{sentence}</h2>
      <ul>#{messages}</ul>
    </div>
    HTML

    html.html_safe
  end
end