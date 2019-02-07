class SignUpFormBuilder < ActionView::Helpers::FormBuilder
  def errors(method)
    object.errors.full_messages_for(method).map { |m| help_block(m) }.join.html_safe
  end

  def help_block(message)
    %Q(<div class="help-block">#{message}</div>).html_safe
  end
end
