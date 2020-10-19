curl -XPOST -v http://192.168.49.2:30081/api/v1/users -H 'content-type: application/json' -d '{"first_name": "Eoin", "last_name": "Connolly", "email": "eoin@provide.services", "password": "eoin!"}'

curl -XPOST -v http://192.168.49.2:30081/api/v1/authenticate -H 'content-type: application/json' -d '{"email": "eoin@provide.services", "password": "eoin!"}'
10.98.232.154

curl -XPOST -v http://10.98.232.154:30081/api/v1/authenticate -H 'content-type: application/json' -d '{"email": "eoin@provide.services", "password": "eoin!"}'



curl -XPOST -k -v -H 'content-type: application/json' \
    -H 'Authorization: bearer eyJhbGciOiJSUzI1NiIsImtpZCI6IjEwOjJlOmQ5OmUxOmI4OmEyOjM0OjM3Ojk5OjNhOjI0OmZjOmFhOmQxOmM4OjU5IiwidHlwIjoiSldUIn0.eyJhdWQiOiJodHRwczovL3Byb3ZpZGUuc2VydmljZXMvYXBpL3YxIiwiZXhwIjoxNjAyOTUxNTAzLCJpYXQiOjE2MDI4NjUxMDMsImlzcyI6Imh0dHBzOi8vaWRlbnQucHJvdmlkZS5zZXJ2aWNlcyIsImp0aSI6IjU4MjgxNjk4LTE2MmUtNGNjOC1iYTAyLTUyMjhmZWJmYWQxMSIsIm5hdHMiOnsicGVybWlzc2lvbnMiOnsic3Vic2NyaWJlIjp7ImFsbG93IjpbInVzZXIuYzFkMjY4NDUtOTBmYy00NGZmLWI4OGMtZjVjMTFmYTAzOGI1IiwibmV0d29yay4qLmNvbm5lY3Rvci4qIiwibmV0d29yay4qLnN0YXR1cyIsInBsYXRmb3JtLlx1MDAzZSJdfX19LCJwcnZkIjp7InBlcm1pc3Npb25zIjo3NTUzLCJ1c2VyX2lkIjoiYzFkMjY4NDUtOTBmYy00NGZmLWI4OGMtZjVjMTFmYTAzOGI1In0sInN1YiI6InVzZXI6YzFkMjY4NDUtOTBmYy00NGZmLWI4OGMtZjVjMTFmYTAzOGI1In0.QheEIqOgIXq8ZeWw4lyBspcGLDFaiY9pjb0F2yJw1-38aALc23fUQm_-cxLiMVom84_8S-Ts7MUKwFmoknPIMCOZPvYUltFDwrd-a_kPboEJYD_Jr5DtmU6VLYEiK57rnDUy4EzEdW23tzLCsaneNfb5ELVjkiGvDtkx10G3V1iGBJaiqeNP6dpE63MJO-IE3-hJrW0rxnCpNtSuRdc0izYV-vcXk-lJ8HaUdBgiwHzbGnnWUS6rgjJMKpIjmPRVdw7CoKsCQA2d5URGoYm3LFs7-dtZ_tdWYOpGhY83ZdH0U-vmw3hDVXqj2afFZF3QiRD8lDnkNy6q9BMlGx2oNeOMowC36ZQ_HiXyzsuAmB2sj0RH--NldHJFcDwxYgHA4z_QLLA5yjRy4Y0re7q8__Zz73WTk0urSduFRV4DqL3L4IiN1Iof-wsyC4v3AuSPLiOt4XCoqBHDMd0rtVC0aYBlLJ8PqRSRmPHffXVsQBVs2fwekxC_SjhOCo-r9oePjwUj8ECaRTG4s79SR0LR5Advg8ea_qkGLEmrA5YjtTUPgPhghSy-bj6bJlPEcW6KthEd9Ve-xb5OGH3A-s_jJrhyfxPHo2lJbL5nn2wrBQakAGns81EilYO43oUFgmuj7WSgwIWAztWkZi797MS380vNJ9N7AhY00urFH8Do1x0' \
    http://10.98.232.154:30082/api/v1/vaults \
    -d '{"name":"Acme Inc.", "description": "Organizational keystore #2"}'

kubectl get svc vault -o wide
