module ApplicationHelper
  def tab(label, path, active, html_options: {})
    render partial: "common/tab", locals: { label: label, path: path, active: active, html_options: html_options}
  end
end
