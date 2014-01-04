json.array!(@personal_rubros) do |personal_rubro|
  json.extract! personal_rubro, :id, :idPersona, :idTipoPersonalRubro, :especialidadPersonalRubro
  json.url personal_rubro_url(personal_rubro, format: :json)
end
