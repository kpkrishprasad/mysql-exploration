db-start:
	scripts/db-start

db-create:
	db/create-database
	db/create-schema

db-delete:
	db/delete-database

db-stop:
	scripts/db-stop

db-recreate: db-delete db-create
	echo db-recreate done



