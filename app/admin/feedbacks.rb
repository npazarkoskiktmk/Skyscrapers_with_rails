ActiveAdmin.register Feedback do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :comment, :book_id, :user_id

  index do
    selectable_column
    column :comment
    column :actions do |feedback|
      links = []
      links << link_to('Edit', edit_admin_feedback_path(feedback.id))
      links << link_to('Show', admin_feedback_path(feedback.id))
      links << link_to('Delete', admin_feedback_path(feedback.id), method: :delete, confirm: 'Are you sure?')
      links.join(' ').html_safe
    end
  end
  #
  # or
  #
  # permit_params do
  #   permitted = [:comment, :book_id, :user_id]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

end
