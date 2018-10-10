.DEFAULT=build

build:
	docker build -t hmctssandbox.azurecr.io/hmcts/bulk-scan-ccd-importer .

push:
	az acr login --name hmctssandbox
	docker push hmctssandbox.azurecr.io/hmcts/bulk-scan-ccd-importer