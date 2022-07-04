#!/bin/bash
set -e
IFS='|'

CODEGEN="{\
\"”generateCode\":true,\
\"codeLanguage\":\"typescript\",\
\"fileNamePattern\":\"src/graphql/**/*.ts\",\
\"generatedFileName\":\"API\",\
\"generateDocs\":true\
}"

amplify push function --yes

amplify publish --yes --force
