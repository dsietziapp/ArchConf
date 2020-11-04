#!/bin/bash

curl --location --request POST 'http://localhost:8000/order/clothing/iStore/5000' \
--header 'Data-Usage-Agreement: [{"agreement_name":"billing","location":"www.dua.org/billing.pdf","agreed_dtm": 1553988607}]' \
--header 'Content-Type: application/json' \
--header 'Data-Tracker-Chain: W3siaWRlbnRpZmllciI6eyJkYXRhX2lkIjoib3JkZXJ+Y2xvdGhpbmd+aVN0b3JlfjUwMDAiLCJpbmRleCI6MCwidGltZXN0YW1wIjowLCJhY3Rvcl9pZCI6IiIsInByZXZpb3VzX2hhc2giOiIwIn0sImhhc2giOiI3MjI1OTUwMzMyNzI3NjAyMDk1MjEwMjM2ODY3MjE0ODM1ODQ4NSIsIm5vbmNlIjo1fV0=' \
--header 'Authorization: Basic aXN0b3JlX2FwcDpzZWNyZXQ=' \
--data-raw '{
	"quantity": 1,
	"status":"new"
}'