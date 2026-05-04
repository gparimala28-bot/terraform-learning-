path "kv/*" {
  capabilities = ["read"]
}

path "auth/token/create" {
  capabilities = ["update"]
}
