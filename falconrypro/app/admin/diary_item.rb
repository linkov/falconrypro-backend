

ActiveAdminDatetimepicker::Base.format = "%Y-%m-%d"
ActiveAdmin.register DiaryItem do
  permit_params :diary_foods, :created_date, :season_id, :diary_weights, :bird_id, :note,:diary_photos_attributes => [:id, :_destroy,:lat,:long,:photo,:quarry_type_id,:pin_item_type_id], :pin_items_attributes => [:id, :_destroy,:lat,:long,:photo,:note,:pin_item_type_id],:diary_foods_attributes => [:id, :_destroy,:eaten,:food_id,:time], :diary_weights_attributes => [:id, :_destroy,:weight,:time],:quarry_type_ids => []
  before_filter :skip_sidebar!, :only => :index
  menu parent: 'User generated'

  index  do
  selectable_column
  column :created_at
  column :created_date
  column :bird
  column :season
  column :note
  actions
  end



  form do |f|

    tabs do
      tab 'Basic' do


        f.inputs do
          f.input :created_date, as: :date_time_picker
          f.input :note
          f.input :bird,:input_html => {
        :onchange => "
          var bird = $(this).val();
          console.log(bird);

          $('#diary_item_season_id').val(0).find('option').each(function(){
            var $option = $(this),
              isCorrectUser = ($option.attr('data-bird') === bird);

              $option.prop('disabled',!isCorrectUser);
          });
        "
        }
          f.input :season, collection: Season.all.map{ |season|
            [season.start.to_s+" - "+season.end.to_s,season.id, {"data-bird" => season.bird_id}]
          }
        end


      end

      tab 'Foods' do

        f.inputs "Foods" do

          f.has_many :diary_foods do |food|
            food.input :food, :as => :select, :collection => Food.all.pluck(:name, :id)
            food.input :eaten
            food.input :time
            food.input :_destroy, :as => :boolean, :label => "remove"

            end

        end
      end

      tab 'Weights' do

        f.inputs "Weights" do

          f.has_many :diary_weights do |diary_weight|
            diary_weight.input :time
            diary_weight.input :weight
            diary_weight.input :_destroy, :as => :boolean, :label => "remove"

            end

        end
      end


      tab 'Photos' do

        f.inputs "Photos" do

          f.has_many :diary_photos do |diary_photo|
            diary_photo.input :long
            diary_photo.input :lat
            diary_photo.input :quarry_type
            diary_photo.input :pin_item_type
            diary_photo.input :photo, :as => :file, :label => 'Preview image', :hint => image_tag(diary_photo.object.photo.url(:thumb))

            diary_photo.input :_destroy, :as => :boolean, :label => "remove"

            end

        end
      end

      tab 'Querry caught' do

        f.inputs "Querry caught" do

          f.input :quarry_types, as: :check_boxes, :collection => QuarryType.all.map{ |qt|  [qt.name, qt.id] }

        end
      end

      tab 'Pins' do

        f.inputs "Pins" do

          f.has_many :pin_items do |pin_item|
            pin_item.input :lat
            pin_item.input :long
            pin_item.input :photo
            pin_item.input :note
            pin_item.input :pin_item_type
            pin_item.input :_destroy, :as => :boolean, :label => "remove"

            end

        end
      end


  end


   f.actions

  end

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


  panel "Quarry caught" do

            table_for diary_item.quarry_types do
              column :name

            end
  end


  panel "Pins" do

        table_for diary_item.pin_items do
          column :pin_item_type
          column :lat
          column :long
          column :note
          column "Image" do |pin|
              image_tag pin.photo.url(:thumb)
          end

        end

  end


end

end
