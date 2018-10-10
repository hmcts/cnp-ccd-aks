.DEFAULT=build

build:
	docker build -t hmctssandbox.azurecr.io/hmcts/bulk-scan-ccd-importer:v0.1 .

push:
	az acr login --name hmctssandbox
	docker push hmctssandbox.azurecr.io/hmcts/bulk-scan-ccd-importer:v0.1