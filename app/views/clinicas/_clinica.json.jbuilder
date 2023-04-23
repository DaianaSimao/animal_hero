json.extract! clinica, :id, :nome, :endereco, :numero, :estado, :logo, :created_at, :updated_at
json.url clinica_url(clinica, format: :json)
