json.array!(@cliants) do |cliant|
  json.extract! cliant, :id, :title, :area, :name, :email, :smallnumber, :concept
  json.url cliant_url(cliant, format: :json)
end
