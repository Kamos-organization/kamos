ActiveAdmin.register Favorite do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

  controller do
    def permitted_params
      params.permit!
    end
  end

  # 一覧
  index do
    selectable_column
    id_column
    column :alcohol
    column :user
    column :created_at
    column :updated_at
    actions
  end

  # form
  form do |f|
    f.semantic_errors :result_group_questions

    f.inputs do
      f.input :alcohol
      f.input :user
    end
    f.actions
  end

end
