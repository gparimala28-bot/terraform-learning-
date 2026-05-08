#!/bin/bash

if [ -z "$AWS_ACCESS_KEY_ID" ] || [ -z "$AWS_SECRET_ACCESS_KEY" ]; then

  echo "AWS credentials not set"

  exit 1
fi

export VAULT_ADDR='http://127.0.0.1:8200'

vault server -dev > vault.log 2>&1 &

sleep 5

ROOT_TOKEN=$(grep "Root Token:" vault.log | awk '{print $NF}')

export VAULT_TOKEN=$ROOT_TOKEN

echo "Vault token set successfully"

vault secrets enable -path=secret kv-v2

vault kv put secret/aws \
access_key="$AWS_ACCESS_KEY_ID" \
secret_key="$AWS_SECRET_ACCESS_KEY"

vault policy write terraform-policy policy.hcl

vault auth enable approle

vault write auth/approle/role/terraform-role \
token_policies="terraform-policy"

echo "Vault setup completed"