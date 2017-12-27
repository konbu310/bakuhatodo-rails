json.extract! task, :id, :title, :content, :deadline, :top, :left, :size, :user_id, :created_at, :updated_at
json.url task_url(task, format: :json)
