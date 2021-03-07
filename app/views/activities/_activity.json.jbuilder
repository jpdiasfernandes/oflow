json.extract! activity, :id, :title, :description, :date_time, :distance, :elapsed_time, :elevation, :avg_hr, :max_hr, :effort, :created_at, :updated_at
json.url activity_url(activity, format: :json)
