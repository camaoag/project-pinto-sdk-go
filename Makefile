PACKAGE 					?= gopinto
SOURCE_URL 					?= "https://test.camao.domains.fascicularis.de/api/swagger/dns-swagger.json"

GIT_REPOSITORY_NAME 		?= "project-pinto-sdk-go"
GIT_REPOSITORY_NAMESPACE 	?= "camaoag"
GIT_HOST 					?= "github.com"

.PHONY: generate generate-test generate-openapi lock-file-maintenance fmt-fix

generate: generate-openapi lock-file-maintenance fmt-fix

generate-test:
	openapi-generator-cli generate -g go \
		-i $(SOURCE_URL) \
		--package-name $(PACKAGE) \
		--git-repo-id $(GIT_REPOSITORY_NAME) \
		--git-user-id $(GIT_REPOSITORY_NAMESPACE) \
		--git-host $(GIT_HOST) \
		--additional-properties=generateInterfaces=true \
		--dry-run

generate-openapi:
	openapi-generator-cli generate -g go \
		-i $(SOURCE_URL) \
		--package-name $(PACKAGE) \
		--git-repo-id $(GIT_REPOSITORY_NAME) \
		--git-user-id $(GIT_REPOSITORY_NAMESPACE) \
		--git-host $(GIT_HOST) \
		--additional-properties=generateInterfaces=true

lock-file-maintenance:
	go mod tidy

fmt-fix:
	gofmt -s -w .
