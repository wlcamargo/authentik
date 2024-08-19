docker run --rm --name grist-saml-service --env DEBUG=1 -p 8484:8484 \
	--env GRIST_SAML_SP_HOST=http://localhost:8484 \
	--env GRIST_SAML_IDP_LOGIN=https://localhost:9443/application/saml/grist/sso/binding/redirect/ \
	--env GRIST_SAML_IDP_LOGOUT=https://localhost:9443/if/session-end/grist/ \
	--env GRIST_SAML_IDP_UNENCRYPTED=1 \
	--env GRIST_SAML_SP_KEY=/persist/grist_private_key.pem \
	--env GRIST_SAML_SP_CERT=/persist/grist_certificate.pem \
	--env GRIST_SAML_IDP_CERTS=/persist/grist_certificate.pem \
	-v $PWD/persist:/persist -it gristlabs/grist
