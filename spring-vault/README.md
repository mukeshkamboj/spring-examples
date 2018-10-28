# Spring Vault Example

## start the Vault server.
execute the below command on project root.
This will start the Vault server and add the database credentials.
```
pushd infrastructure;docker-compose up --build;popd
```

## Start the boot application.

```
mvn spring-boot:run
```

You will notice the below text in application log. These are db credentials being fetched from Valut.

```
******************************
 username : db_user
 password : db_user_password
******************************
```