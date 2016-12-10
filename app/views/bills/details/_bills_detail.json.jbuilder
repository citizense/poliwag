json.extract! bills_detail, :id, :created_at, :updated_at
json.url bills_detail_url(bills_detail, format: :json)