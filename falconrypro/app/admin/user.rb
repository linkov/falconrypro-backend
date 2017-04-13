ActiveAdmin.register User do
  permit_params :email, :password, :password_confirmation
  menu parent: 'User generated'

  index do
    selectable_column
    id_column
    column :email
    column :created_at
    actions
  end

end
