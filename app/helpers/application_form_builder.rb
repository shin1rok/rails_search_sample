class ApplicationFormBuilder < ActionView::Helpers::FormBuilder
  include ActionView::Helpers::TagHelper
  include ActionView::Context

  def inline_radio_buttons(method:, collection:, checked:)
    collection_radio_buttons(method, collection, :first, :first) do |r|
      tag.div(class: 'form-check form-check-inline') do
        r.radio_button(checked: r.value == checked, class: 'form-check-input') + self.label(r.text,
                                                                                            class: 'form-check-label')
      end
    end
  end
end
