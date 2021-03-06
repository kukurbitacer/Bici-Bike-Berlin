RailsAdmin.config do |config|

  ### Popular gems integration

  ## == Devise ==
  # config.authenticate_with do
  #   warden.authenticate! scope: :user
  # end
  # config.current_user_method(&:current_user)

  ## == Cancan ==
  # config.authorize_with :cancan

  ## == Pundit ==
  # config.authorize_with :pundit

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  ## == Gravatar integration ==
  ## To disable Gravatar integration in Navigation Bar set to false
  # config.show_gravatar = true

  RailsAdmin.config do |config|
    config.authorize_with do |controller|
      redirect_to main_app.root_path unless current_user && current_user.admin
    end
  end


  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    export
    bulk_delete
    show
    edit
    delete
    show_in_app

    ## With an audit adapter, you can add:
    # history_index
    # history_show
  end

  config.model 'Tour' do
    configure :translations, :globalize_tabs
  end

  config.model 'Tour::Translation' do
    visible false
    configure :locale, :hidden do
      help ''
    end
    include_fields :locale, :name, :description, :location
  end

  config.model 'Guide' do
    configure :translations, :globalize_tabs
  end

  config.model 'Guide::Translation' do
    visible false
    configure :locale, :hidden do
      help ''
    end
    include_fields :locale, :description, :small_description
  end


  config.included_models = ['Tour','Tour::Translation', 'User', 'Guide', 'Guide::Translation', 'Booking']

end
