#!/bin/bash

slackToDeptDev() {
	curl \
			-X POST \
			--data-urlencode \
			"payload={\"channel\": \"#npm-publish-notify\", \"text\": \"$1\", \"attachments\":[{ \"fields\":[{\"title\":\"Notes\",\"value\":\"$2\"  }] }] }" https://hooks.slack.com/services/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
}

PACKAGE_NAME=$(jq -r .name package.json)
PACKAGE_VERSION=$(jq -r .version package.json)
echo "${PACKAGE_NAME}@${PACKAGE_VERSION} PUBLISH SUCCESS"

slackToDeptDev "\`${PACKAGE_NAME}@${PACKAGE_VERSION}\` 이 배포되었습니다. <!here>" "담당자는 확인해주세요!"

