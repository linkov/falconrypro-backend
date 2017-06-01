ActiveAdmin.register DiaryItem do
  permit_params :diary_foods, :season_id, :diary_weights, :bird_id, :quarry_type_ids
  before_filter :skip_sidebar!, :only => :index
  menu parent: 'User generated'

  show do


  panel "General" do

    attributes_table do
      row :note
      row :bird
      row :season_id
    end


  end


  panel "Foods" do

        table_for diary_item.diary_foods do
          column :food
          column :time
          column :eaten

        end

  end


  panel "Weights" do

            table_for diary_item.diary_weights do
              column :time
              column :weight

            end
  end


  panel "Pins" do

        table_for diary_item.pin_items do
          column :pin_item_type
          column :lat
          column :long
          column :note

        end

  end


end

end
