class Tramway::Landing::BlockForm < ::Tramway::Core::ApplicationForm
  properties :title, :background, :view_state, :block_type, :position, :navbar_link, :anchor

  def initialize(object)
    form_object = super object
    form_properties title: :string,
                    background: :file,
                    position: :numeric,
                    block_type: :default,
                    navbar_link: :default,
                    anchor: :string
    form_object
  end
end
