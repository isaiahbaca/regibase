class ApiController < ApplicationController
  skip_before_action :verify_authenticity_token

  def api
    @form_html = FormBuilder.to_html params[:form_id]
    render "api.js.coffee"
  end

end
