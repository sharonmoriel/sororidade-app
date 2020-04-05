Trestle.resource(:episodes) do
  menu do
    item :episodes, icon: "fa fa-star"
  end

  # Define custom scopes for the index view
  # scopes do
  #  scope :all, default: true
  #  scope :published
  #  scope :drafts, -> { Episode.unpublished }
  # end

  # Customize the table columns shown on the index view.  #
  table do
    column :title, link: true
    column :updated_at, align: :center
    column :created_at, align: :center
    actions
  end

  # Customize the form fields shown on the new/edit views.
  form do |episode|
    text_field :title
    text_field :description
    editor :content
    file_field :video

    row do
      col { datetime_field :updated_at }
      col { datetime_field :created_at }
    end

    unless episode.new_record?
      concat content_tag(:hr)
      concat link_to("Preview", Rails.application.routes.url_helpers.episode_path(episode), class: "btn btn-block btn-primary", target: :_blank)
    end
  end



  # By default, all parameters passed to the update and create actions will be
  # permitted. If you do not have full trust in your users, you should explicitly
  # define the list of permitted parameters.
  #
  # For further information, see the Rails documentation on Strong Parameters:
  #   http://guides.rubyonrails.org/action_controller_overview.html#strong-parameters
  #
  # params do |params|
  #   params.require(:episode).permit(:name, ...)
  # end
end
