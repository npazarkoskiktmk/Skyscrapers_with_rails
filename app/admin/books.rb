ActiveAdmin.register Book do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :title, :description, :author, :year
  #
  # or
  #
  # permit_params do
  #   permitted = [:title, :description, :author, :year]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  ActiveAdmin.register Book do
    config.sort_order = "author_asc"
  end

  index do
    selectable_column
    column :title do |book|
      link_to book.title + " Author: " + book.author, admin_book_path(book)
    end
    column :description, sortable: :description
  end

end
