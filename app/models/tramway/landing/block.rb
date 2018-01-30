class Tramway::Landing::Block < ::Tramway::Landing::ApplicationRecord
  enumerize :block_type, in: [ :header ]

  mount_uploader :background, PhotoUploader

  state_machine :view_state, initial: :published do
    state :published
    state :hidden

    event :publish do
      transition hidden: :published
    end

    event :hide do
      transition published: :hidden
    end
  end

  scope :on_main_page, -> { active.where(view_state: :published).order :position }
end
