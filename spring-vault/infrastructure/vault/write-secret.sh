#!/bin/sh

wait_seconds=5
max_retry=20
counter=1
while [ "$(vault status | grep -c 'Initialized     true')" -eq 0 ]
do
    if [ "$counter" -eq "$max_retry" ]
    then
        echo "Max retries attempted. Exiting."
        exit 1
    else
        echo "Vault server is not up. Retrying......"
        let counter++
        sleep $wait_seconds
    fi
done

echo "**************************** Vault server started. Entering the secrets. *******************"
vault login $VAULT_DEV_ROOT_TOKEN_ID
vault secrets enable -path=database-cred kv
vault write database-cred username=db_user password=db_user_password
echo "************************************** entered the secrets. ********************************"
