class FormBuilder < Struct.new(:params)
  class << self

    def to_html(params)

      @form = Form.find(params)

      @form_data = JSON.parse @form.elements

      Haml::Engine.new(template_content).render(self)
    end

    def template_content
      File.read(Rails.root.join('app/views/shared/form_builder.html.haml'))
    end
  end
end
