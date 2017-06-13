ActiveAdmin.register User do
  permit_params :email, :password, :password_confirmation, :metric
  menu parent: 'User generated'

  index do
    selectable_column
    id_column
    column :metric
    column :email
    column :created_at
    actions
  end

end
