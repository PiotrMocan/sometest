# Public

* __POST__ api/public/v1/sign_up
#### sign_up
params

```
header:
[
]
body:
{
  "email": "bulatkarimov96@gmail.com",
  "inn": "8622026633",
  "name": "test"
}

```
RESPONSE:

```
{
  "id": "d34c0abb-0bf8-41c2-8610-c77b02f5c924",
  "refresh_token": "c255b1a6-fdd5-4ad7-bf8f-bd7e157e689f",
  "access_token": "eyJhbGciOiJIUzI1NiJ9.eyJlbWFpbCI6ImJ1bGF0a2FyaW1vdjk2QGdtYWlsLmNvbSIsInVzZXJfaWQiOiI0OTIwNTk5MS05NjI5LTQxNTEtODNmMS0zODdjNzc4ZDM3YzEiLCJ1c2VyX3R5cGUiOiJwcm92aWRlciIsImNvbXBhbnlfaWQiOiJmY2JiNzFkYi03MTYxLTQ5Y2EtYTJiNy0wODk1ZmNlNTI1MTYiLCJzZXNzaW9uX2lkIjoiZDM0YzBhYmItMGJmOC00MWMyLTg2MTAtYzc3YjAyZjVjOTI0In0.ql1vuhrXVc893uZKqpTPHnN1IX-b8VxrowUIZIvFmN4",
  "user_agent": "PostmanRuntime/7.28.0",
  "user_type": "provider",
  "user_id": "49205991-9629-4151-83f1-387c778d37c1",
  "created_at": "2021-04-30T12:49:20.606Z"
}

```

* __PATCH__ api/public/v1/sign_in
#### sign_in
params

```
header:
[
]
body:
{
  "email": "bulatkarimov96@gmail.com",
  "password": "123123"
}

```
RESPONSE:

```
{
  "id": "607620c6-03d7-4c65-be81-843e42be7cf6",
  "refresh_token": "9c16d2d5-a4c1-4668-8363-c6e5ca343d7d",
  "access_token": "eyJhbGciOiJIUzI1NiJ9.eyJlbWFpbCI6ImJ1bGF0a2FyaW1vdjk2QGdtYWlsLmNvbSIsInVzZXJfaWQiOiI1MmE3NzE1Ni03YmI1LTQ4NDctOTI4NC03ZWRiY2VlYmM0MjYiLCJ1c2VyX3R5cGUiOiJwcm92aWRlciIsImNvbXBhbnlfaWQiOiI4ZDE3ZGY3Ni01ODdiLTQ0MTMtYWE0Ny0yYjI5MGQ0OTRhMWMiLCJzZXNzaW9uX2lkIjoiNjA3NjIwYzYtMDNkNy00YzY1LWJlODEtODQzZTQyYmU3Y2Y2In0.ea8Mi9ttoKM4FkEAdZuIdLgJTB93D5XBEv0aH2jv3ho",
  "user_agent": "PostmanRuntime/7.28.0",
  "user_type": "provider",
  "user_id": "52a77156-7bb5-4847-9284-7edbceebc426",
  "created_at": "2021-04-30T12:34:58.397Z"
}

```

* __PATCH__ api/public/v1/provider/refresh_token
#### refresh_token
params

```
header:
[
]
body:
{
  "refresh_token": "be3fe3bd-83a3-4271-aa7e-3f8cdb8df4f0"
}

```
RESPONSE:

```
{
  "id": "b88dc37f-064b-45f5-a1ae-fdf1796f89c8",
  "refresh_token": "16812d05-b1b5-4200-b266-cf0ffc1a8bbd",
  "access_token": "eyJhbGciOiJIUzI1NiJ9.eyJlbWFpbCI6ImJ1bGF0a2FyaW1vdjk2QGdtYWlsLmNvbSIsInVzZXJfaWQiOiI0OTIwNTk5MS05NjI5LTQxNTEtODNmMS0zODdjNzc4ZDM3YzEiLCJ1c2VyX3R5cGUiOiJwcm92aWRlciIsImNvbXBhbnlfaWQiOiJmY2JiNzFkYi03MTYxLTQ5Y2EtYTJiNy0wODk1ZmNlNTI1MTYiLCJzZXNzaW9uX2lkIjoiYzIzY2FmMmUtNzU3ZC00MWI5LWE0MDEtZTY5NDAyOTY0YjVmIn0.qlGh8H9Epq_MHJJHsm9aL8SwSaZA0ycSNaD7rvNHfNs",
  "user_agent": "PostmanRuntime/7.28.0",
  "user_type": "provider",
  "user_id": "49205991-9629-4151-83f1-387c778d37c1",
  "created_at": "2021-04-30T12:51:24.928Z"
}

```


* __POST__ api/public/v1/provider/balance/refill
#### balance refill
params

```
header:
[
  {
    "key": "Authorization",
    "value": "Bearer eyJhbGciOiJIUzI1NiJ9.eyJlbWFp",
    "type": "text"
  }
]
body:
{
  "amount": "1000"
}

```
RESPONSE:

```
{
  "id": "53352b90-2889-4faa-a017-a8b4f7095687",
  "invoice":   {
    "uuid": "ae324a95-3945-45a5-9610-45e5125d567c",
    "payment_type": "bank",
    "operation_type": "refill",
    "state": "pending",
    "recipient":     {
      "account_uuid": "852c6ff4-3cbd-4eb1-93c6-9299f9d6d399",
      "inn": "8622026633",
      "kpp": "862201001",
      "company_name": "ООО "СИРИН"",
      "address": "628260, Ханты-Мансийский Автономный Округ - Югра ао, Югорск г, Спортивная ул, дом 3, офис 7"
    }
    "document_ready": "true",
    "pay_off": "https://s3.selcdn.ru/billing/bank_invoices/ae324a95-3945-45a5-9610-45e5125d567c.pdf?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=136739_billing%2F20210427%2Fru-1a%2Fs3%2Faws4_request&X-Amz-Date=20210427T171238Z&X-Amz-Expires=259200&X-Amz-SignedHeaders=host&X-Amz-Signature=191f18b1f507776ede3783474e055ae94caa47d374702e305c441afbe0fa5987",
    "amount": "1000"
  }
  "total_price": "1000",
  "order_items": [
  ]
}

```

* __GET__ api/public/v1/provider/payments
#### payments index
params

```
header:
[
  {
    "key": "Authorization",
    "value": "Bearer eyJhbGciOiJIUzI1NiJ9.eyJlbWFp",
    "type": "text"
  }
]
body:
{
  "month": "2021-05"
}

```
RESPONSE:

```
[
  {
    "id": "a554017a-b620-4d6e-a28c-6dfd03dae6e0",
    "invoice":     {
      "uuid": "ea405477-5883-474d-9d1b-604cd84192e2",
      "payment_type": "bank",
      "operation_type": "refill",
      "state": "pending",
      "recipient":       {
        "account_uuid": "8622026633",
        "inn": "8622026633",
        "kpp": "862201001",
        "company_name": "ООО "СИРИН"",
        "address": "628260, Ханты-Мансийский Автономный Округ - Югра ао, Югорск г, Спортивная ул, дом 3, офис 7"
      }
      "document_ready": "true",
      "pay_off": "https://s3.selcdn.ru/billing/bank_invoices/ea405477-5883-474d-9d1b-604cd84192e2.pdf?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=136739_billing%2F20210505%2Fru-1a%2Fs3%2Faws4_request&X-Amz-Date=20210505T173219Z&X-Amz-Expires=259200&X-Amz-SignedHeaders=host&X-Amz-Signature=34e975d418e055f384f2b8e553f20b3bedc598bdc1e27476e036472fe2e8c660",
      "amount": "1000"
    }
    "total_price": "1000",
    "order_items": [
    ]
  }
]
```

* __GET__ api/public/v1/provider/service_acts
#### service acts index
params

```
header:
[
  {
    "key": "Authorization",
    "value": "Bearer eyJhbGciOiJIUzI1NiJ9.eyJlbWFp",
    "type": "text"
  }
]
body:
{
  "month": "2021-05"
}

```
RESPONSE:

```
[
  {
    "id": "ea8fb219-f9cc-4804-8571-008acfd4b79a",
    "order":     {
      "id": "aa508b01-ea9d-4f14-9c80-f8dc8598aa50",
      "invoice":       {
        "uuid": "6cee03a6-d623-4cf5-ba2c-f51081846cbe",
        "payment_type": "balance",
        "operation_type": "purchase",
        "state": "succeeded",
        "recipient":         {
          "account_uuid": "8622026633",
          "inn": "8622026633",
          "kpp": "862201001",
          "company_name": "ООО "СИРИН"",
          "address": "628260, Ханты-Мансийский Автономный Округ - Югра ао, Югорск г, Спортивная ул, дом 3, офис 7"
        }
        "pay_off": "",
        "amount": "80"
      }
      "total_price": "80",
      "order_items": [
      ]
    }
    "document": "http://localhost:3000/rails/active_storage/blobs/redirect/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBDUT09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--1358358f86b7360c10d0788ea4691c3a556ebf97/ea8fb219-f9cc-4804-8571-008acfd4b79a.pdf"
  }
]
```
* __GET__ api/public/v1/provider/service_acts/{:service_act_uuid}
#### service act show
params

```
header:
[
  {
    "key": "Authorization",
    "value": "Bearer eyJhbGciOiJIUzI1NiJ9.eyJlbWFp",
    "type": "text"
  }
]
body:
{
  "month": "2021-05"
}

```
RESPONSE:

```
{
  "id": "8726e133-87ce-458e-a947-97f599a9756d",
  "order":   {
    "id": "f687d93b-f1f4-4052-bafe-1b2a47c9b49e",
    "invoice":     {
      "uuid": "817461cc-e9de-4134-98f8-59e98a38552e",
      "payment_type": "balance",
      "operation_type": "purchase",
      "state": "succeeded",
      "recipient":       {
        "account_uuid": "8622026633",
        "inn": "8622026633",
        "kpp": "862201001",
        "company_name": "ООО "СИРИН"",
        "address": "628260, Ханты-Мансийский Автономный Округ - Югра ао, Югорск г, Спортивная ул, дом 3, офис 7"
      }
      "pay_off": "",
      "amount": "80"
    }
    "total_price": "80",
    "order_items": [
    ]
  }
  "document": "http://localhost:3000/rails/active_storage/blobs/redirect/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBDZz09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--31afb4f93b9bc134011c0625b27f552e70832665/8726e133-87ce-458e-a947-97f599a9756d.pdf",
  "licenses": [
    {
      "id": "89244131-65a7-4050-83e5-d0c79467a182",
      "title": "service.sirin_cloud.title",
      "identifier": "sirin_cloud",
      "description": "service.sirin_cloud.description",
      "price": "1111561",
      "is_active": "true",
      "group": "videoserver",
      "group_description": "service.videoserver.group_description",
      "group_name": "service.videoserver.group_name",
      "device_uuid": "123456"
    }
  ]
}

```

* __GET__ api/public/v1/provider/balance/operations
#### balance operations
params

```
header:
[
  {
    "key": "Authorization",
    "value": "Bearer eyJhbGciOiJIUzI1NiJ9.eyJlbWFp",
    "type": "text"
  }
]
body:
{

}

```
RESPONSE:

```
[
  {
    "target": "amount",
    "action": "charge",
    "state": "applied",
    "source": "bank",
    "change": "10",
    "result": "10",
    "date": "2021-04-26T07:24:36.209Z"
  }
]
```
* __GET__ /cameras/
#### Получить список камер с поиском, фильтрами, сортировкой, пагинацией

обязательные параметры:
```
headers:
  Authorization - Bearer JWT
```

опциональные параметры:

```
query:
  q - поиск по названию камеры или rtsp ссылке
  sort - название атррибута по которому необходима сортировка, например created_at
  order - способ сотировки - 'asc' по возрастанию, 'desc' по убыванию
  page - номер страницы для пагинации
  limit - количество записей на странице
```

Response

__200__

```
{
  "cameras": [
    {
      "id": "4f8bde57-f234-4724-9e72-2c568e2a6cc9",
      "gate_id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
      "name": "Общественная женская баня",
      "on_review": true,
      "company_id": "8506a2b8-25ec-4231-9681-930acfddb42e",
      "stream_url": null,
      "thumb": null,
      "embed": null,
      "is_ok": true,
      "archive_download_link": "https://vh1.ebtel.ru/29d489f1-be21-4526-95d3-9da49788bd75/archive-$utc_time_from_sec-$duration_sec.mp4",
      "archive_stream_link": "https://vh1.ebtel.ru/29d489f1-be21-4526-95d3-9da49788bd75/archive-$utc_time_from_sec-$duration_sec.m3u8",
      "settings": {
        "host": "192.168.0.1:332",
        "login": "admib",
        "password": "admin",
        "rtsp_url": "rtsp://admin:admin@192.168.0.3:554/cam/realmonitor?channel=1&subtype=0&unicast=true&proto=Onvif"
      }
    }
  ],
    "meta": {
      "page": 0,
      "limit": 20,
      "total_count": 1,
      "total_pages": 1
    }
}
```

__401__

```
  {
    error: true
    message: Неаутентифицированный пользователь
    status: 401
  }
```

* __POST__ /cameras/
  #### Создать новую камеру

  Обязательные параметры:

  ```
  headers:
    Authorization - Статичный токен авторизации. ("Bearer token")

  body:
  {
    "name": "test",
    "login": "tugoserya",
    "password": "simpapoosha",
    "host": "92.255.199.108",
    "rtsp_url": "rtsp://admin:admin@192.168.0.3:554/cam/realmonitor?channel=1&subtype=0&unicast=true&proto=Onvif",
    "company_id": "8506a2b8-25ec-4231-9681-930acfddb42e"
  }
  ```

  Response:

  __201__

  ```
    {
        "id": "03893b13-e502-4843-be5a-9ad22d18f733",
        "name": "test",
        "on_review": true,
        "company_id": "8506a2b8-25ec-4231-9681-930acfddb42e",
        "stream_url": "https://"
        "thumb": "thumb",
        "embed": "embed",
        "is_ok": true
    }
  ```

  __401__

  ```
  {
    "error": "Вам необходимо авторизоваться",
    "message": "you need to provide correct auth token",
    "status": 401
  }
  ```

  __422__

  ```
  {
    "error": "Что-то пошло не так",
    "message": "Something went wrong",
    "status": 422
  }
  ```

# Mobile

* __GET__ api/mobile/v1/customer
#### customer#show
params

```
header:
[
]
body:
{

}

```
RESPONSE:

```
{
  "id": "3dde13ed-7e02-4e83-afd9-940b036eff9e",
  "name": "",
  "phone_number": "79872310937",
  "user_type": "customer",
  "companies": [
  ]
}

```

* __GET__ api/mobile/v1/customer/companies/{:company_uuid}/catalog
#### mobile catalog show
params

```
header:
[
  {
    "key": "Authorization",
    "value": "Bearer eyJhbGciOiJIUzI1NiJ9.eyJlbWFp",
    "type": "text"
  }
]
body:
{
  "device_uuid": "123456"
}

```
RESPONSE:

```
{
  "id": "fd9b39db-db30-4827-ba52-5cefbc7e3164",
  "company_id": "7fd832b0-3b3d-4391-bf98-dd9287b02f52",
  "licenses": [
    {
      "id": "89244131-65a7-4050-83e5-d0c79467a182",
      "title": "service.sirin_cloud.title",
      "description": "service.sirin_cloud.description",
      "device_uuid": "123456",
      "group_name": "service.videoserver.group_name",
      "price": "1111561",
      "active": "true"
    }
  ]
}

```
