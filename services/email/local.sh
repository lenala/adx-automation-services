#!/bin/bash

comkey=$(kubectl get secret a01store-internal-communication-key --template {{.data.key}} | base64 -D)
smtp_server=$(kubectl get secret a01monitor --template {{.data.server}} | base64 -D)
smtp_password=$(kubectl get secret a01monitor --template {{.data.password}} | base64 -D)
smtp_username=$(kubectl get secret a01monitor --template {{.data.username}} | base64 -D)
store_name='a01.azclitest.com'

docker run --rm -e "A01_INTERNAL_COMKEY=$comkey" \
                -e "A01_REPORT_SMTP_SERVER=$smtp_server" \
                -e "A01_REPORT_SENDER_ADDRESS=$smtp_username" \
                -e "A01_REPORT_SENDER_PASSWORD=$smtp_password" \
                -e "A01_STORE_NAME=$store_name" \
                -e "FLASK_DEBUG=True" \
                -p 80:80 -d \
                a01.svc.email:latest
