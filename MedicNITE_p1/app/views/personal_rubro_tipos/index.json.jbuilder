json.array!(@personal_rubro_tipos) do |personal_rubro_tipo|
  json.extract! personal_rubro_tipo, :id, :idTipoPersonalRubro, :tipoPersonalRubro
  json.url personal_rubro_tipo_url(personal_rubro_tipo, format: :json)
end
