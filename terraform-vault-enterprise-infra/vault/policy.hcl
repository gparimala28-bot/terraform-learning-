path "secret/data/aws" {

  capabilities = ["read"]
}

path "auth/token/create" {

  capabilities = ["create", "update"]
}
