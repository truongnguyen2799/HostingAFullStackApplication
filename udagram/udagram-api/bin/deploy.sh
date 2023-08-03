set -x
set -e

eb use truongnd15-udagram-api-dev

eb setenv POSTGRES_HOST=$POSTGRES_HOST \
          POSTGRES_DB=$POSTGRES_DB  \
          POSTGRES_USERNAME=$POSTGRES_USERNAME \
          POSTGRES_PASSWORD=$POSTGRES_PASSWORD \
          PORT=$PORT \
          AWS_REGION=$AWS_REGION \
          AWS_DEFAULT_REGION=$AWS_DEFAULT_REGION \
          AWS_BUCKET=$AWS_BUCKET \
          JWT_SECRET=$JWT_SECRET \
          AWS_ACCESS_KEY_ID=$AWS_ACCESS_KEY_ID \
          AWS_SECRET_ACCESS_KEY=$AWS_SECRET_ACCESS_KEY \
          URL=$URL\
          AWS_PROFILE=$AWS_PROFILE

eb deploy