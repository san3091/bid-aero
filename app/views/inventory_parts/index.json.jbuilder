json.array!(@inventory_parts) do |inventory_part|
  json.extract! inventory_part, :id
  json.url inventory_part_url(inventory_part, format: :json)
end
