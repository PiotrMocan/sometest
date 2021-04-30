# README

* __GET__ api/public/v1/providers/{:provider_uuid}/catalogs
#### catalog show
params

```
header:
body:
{
  "device_uuid": "123456"
}

```
RESPONSE:

```
[
  {
    "id": "d2e90470-81f8-433f-b956-949e09d4c7ba",
    "provider_uuid": "852c6ff4-3cbd-4eb1-93c6-9299f9d6d399",
    "licenses": [
      {
        "id": "fe44d6d1-0ef8-4dc8-aee0-24dea58c2a8a",
        "title": "service.archive_5.title",
        "identifier": "archive_5",
        "description": "service.archive_5.description",
        "price": "",
        "is_active": "false",
        "group": "archive",
        "group_description": "service.archive.group_description",
        "group_name": "service.archive.group_name",
        "device_uuid": "123456"
      }
      {
        "id": "ced7924e-471d-48fd-b8be-54af11d2a28e",
        "title": "service.sirin_cloud.title",
        "identifier": "sirin_cloud",
        "description": "service.sirin_cloud.description",
        "price": "180",
        "is_active": "true",
        "group": "videoserver",
        "group_description": "service.videoserver.group_description",
        "group_name": "service.videoserver.group_name",
        "device_uuid": "123456"
      }
      {
        "id": "bbc0dc6e-f18b-49fc-ab3a-fb65915febe8",
        "title": "service.service_analytics.title",
        "identifier": "service_analytics",
        "description": "service.service_analytics.description",
        "price": "80",
        "is_active": "true",
        "group": "service_analytics",
        "group_description": "service.service_analytics.group_description",
        "group_name": "service.service_analytics.group_name",
        "device_uuid": "123456"
      }
    ]
  }
]
```

* __POST__ api/public/v1/providers/{:provider_uuid}/catalogs/
#### catalog create
params

```
header:
body:
{
  "device_uuid": "123456"
}

```
RESPONSE:

```
{
  "id": "d2e90470-81f8-433f-b956-949e09d4c7ba",
  "provider_uuid": "852c6ff4-3cbd-4eb1-93c6-9299f9d6d399",
  "licenses": [
    {
      "id": "fe44d6d1-0ef8-4dc8-aee0-24dea58c2a8a",
      "title": "service.archive_5.title",
      "identifier": "archive_5",
      "description": "service.archive_5.description",
      "price": "",
      "is_active": "false",
      "group": "archive",
      "group_description": "service.archive.group_description",
      "group_name": "service.archive.group_name",
      "device_uuid": "123456"
    }
    {
      "id": "ced7924e-471d-48fd-b8be-54af11d2a28e",
      "title": "service.sirin_cloud.title",
      "identifier": "sirin_cloud",
      "description": "service.sirin_cloud.description",
      "price": "",
      "is_active": "false",
      "group": "videoserver",
      "group_description": "service.videoserver.group_description",
      "group_name": "service.videoserver.group_name",
      "device_uuid": "123456"
    }
    {
      "id": "bbc0dc6e-f18b-49fc-ab3a-fb65915febe8",
      "title": "service.service_analytics.title",
      "identifier": "service_analytics",
      "description": "service.service_analytics.description",
      "price": "",
      "is_active": "false",
      "group": "service_analytics",
      "group_description": "service.service_analytics.group_description",
      "group_name": "service.service_analytics.group_name",
      "device_uuid": "123456"
    }
  ]
}

```

* __PATCH__ api/public/v1/providers/{:provider_uuid}/catalogs
#### catalog update
params

```
header:
body:
{
  "device_uuid": "123456",
  "licenses": [
    {
      "id": "eb4a7366-3f9a-45e1-8eb0-797ceb063329",
      "active": "true",
      "price": "100"
    }
  ]
}

```
RESPONSE:

```
{
  "order":   {
    "id": "641beaac-3e5a-44ef-bcb6-bfae2d391c9f",
    "invoice":     {
      "uuid": "a230c285-39f0-4fd8-b4ef-9b37e2930857",
      "payment_type": "balance",
      "operation_type": "purchase",
      "state": "succeeded",
      "recipient":       {
        "account_uuid": "852c6ff4-3cbd-4eb1-93c6-9299f9d6d399",
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
  "document": "http://localhost:3000/rails/active_storage/blobs/redirect/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBDUT09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--1358358f86b7360c10d0788ea4691c3a556ebf97/4a5070d7-8652-40f3-a42c-698083bd8214.pdf"
}

```

* __GET__ api/public/v1/providers/{:provider_uuid}/orders/current
#### order show
params

```
header:
body:
{

}

```
RESPONSE:

```
{
  "id": "53d2c64c-10cc-4e4c-b163-17471a4e8020",
  "total_price": "90",
  "order_items": [
    {
      "device_uuid": "12345",
      "license":       {
        "id": "6f6cafe1-bc12-44da-b93a-02b7857c22e6",
        "title": "service.archive_5.title",
        "identifier": "archive_5",
        "description": "service.archive_5.description",
        "price": "90",
        "is_active": "true",
        "group": "archive",
        "group_description": "service.archive.group_description",
        "group_name": "service.archive.group_name",
        "device_uuid": "12345"
      }
      "price": "90"
    }
  ]
}

```

* __PATCH__ api/public/v1/providers/{:provider_uuid}/orders/clear_order
#### order clear
params

```
header:
body:
{

}

```
RESPONSE:

```
[
]
```

* __PATCH__ api/public/v1/providers/{:provider_uuid}/orders/add_item
#### order add_item
params

```
header:
body:
{
  "license_id": "eb4a7366-3f9a-45e1-8eb0-797ceb063329"
}

```
RESPONSE:

```
{
  "id": "53d2c64c-10cc-4e4c-b163-17471a4e8020",
  "total_price": "90",
  "order_items": [
    {
      "device_uuid": "12345",
      "license":       {
        "id": "6f6cafe1-bc12-44da-b93a-02b7857c22e6",
        "title": "service.archive_5.title",
        "identifier": "archive_5",
        "description": "service.archive_5.description",
        "price": "90",
        "is_active": "true",
        "group": "archive",
        "group_description": "service.archive.group_description",
        "group_name": "service.archive.group_name",
        "device_uuid": "12345"
      }
      "price": "90"
    }
  ]
}

```

* __PATCH__ api/public/v1/providers/{:provider_uuid}/orders/remove_item
#### order remove item
params

```
header:
body:
{
  "license_id": "eb4a7366-3f9a-45e1-8eb0-797ceb063329"
}

```
RESPONSE:

```
{
  "id": "53d2c64c-10cc-4e4c-b163-17471a4e8020",
  "total_price": "0",
  "order_items": [
  ]
}

```

* __POST__ api/public/v1/providers/{:provider_uuid}/orders/checkout
#### order checkout
params

```
header:
body:
{
  "payment_type": "card"
}

```
RESPONSE:

```
{
  "uuid": "1a066d97-a5db-419f-8c6b-b006e70cee08",
  "payment_type": "card",
  "operation_type": "purchase",
  "state": "pending",
  "recipient":   {
    "account_uuid": "852c6ff4-3cbd-4eb1-93c6-9299f9d6d399",
    "inn": "8622026633",
    "kpp": "862201001",
    "company_name": "ООО "СИРИН"",
    "address": "628260, Ханты-Мансийский Автономный Округ - Югра ао, Югорск г, Спортивная ул, дом 3, офис 7"
  }
  "pay_off": "https://yoomoney.ru/payments/external/confirmation?orderId=2819d707-000f-5000-8000-1243bc10a804",
  "amount": "90"
}

```

* __GET__ api/public/v1/providers/{:provider_uuid}/orders
#### order index
params

```
header:
body:
{

}

```
RESPONSE:

```
[
  {
    "id": "53d2c64c-10cc-4e4c-b163-17471a4e8020",
    "invoice":     {
      "uuid": "1a066d97-a5db-419f-8c6b-b006e70cee08",
      "payment_type": "card",
      "operation_type": "purchase",
      "state": "succeeded",
      "recipient":       {
        "account_uuid": "852c6ff4-3cbd-4eb1-93c6-9299f9d6d399",
        "inn": "8622026633",
        "kpp": "862201001",
        "company_name": "ООО "СИРИН"",
        "address": "628260, Ханты-Мансийский Автономный Округ - Югра ао, Югорск г, Спортивная ул, дом 3, офис 7"
      }
      "pay_off": "https://yoomoney.ru/payments/external/confirmation?orderId=2819d707-000f-5000-8000-1243bc10a804",
      "amount": "90"
    }
    "total_price": "90",
    "order_items": [
      {
        "device_uuid": "12345",
        "license":         {
          "id": "6f6cafe1-bc12-44da-b93a-02b7857c22e6",
          "title": "service.archive_5.title",
          "identifier": "archive_5",
          "description": "service.archive_5.description",
          "price": "90",
          "is_active": "true",
          "group": "archive",
          "group_description": "service.archive.group_description",
          "group_name": "service.archive.group_name",
          "device_uuid": "12345"
        }
        "price": "90"
      }
    ]
  }
]
```

* __GET__ api/public/v1/providers/{:provider_uuid}/balances
#### balance show
params

```
header:
body:
{
  "provider_uuid": "cca91486-cfd5-4376-8c11-e9acb99a3957"
}

```
RESPONSE:

```
{
  "account_uuid": "cca91486-cfd5-4376-8c11-e9acb99a3957",
  "amount": "10",
  "overdraft": "100"
}

```

* __GET__ api/public/v1/providers/{:provider_uuid}/balances/operations
#### balance operations
params

```
header:
body:
{
  "amount": "10000"
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

* __POST__ api/public/v1/providers/{:provider_uuid}/balances/refill
#### balance refill
params

```
header:
body:
{
  "provider_uuid": "cca91486-cfd5-4376-8c11-e9acb99a3957",
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

* __GET__ api/public/v1/providers/{:provider_uuid}/service_acts
#### service acts index
params

```
header:
body:
{
  "month": "2021-04"
}

```
RESPONSE:

```
[
  {
    "order":     {
      "id": "7ddaf9f5-71ae-4f3b-b41c-45ff006f24ef",
      "invoice":       {
        "uuid": "b1024958-a3af-46d0-bf3a-279645354b50",
        "payment_type": "balance",
        "operation_type": "purchase",
        "state": "succeeded",
        "recipient":         {
          "account_uuid": "852c6ff4-3cbd-4eb1-93c6-9299f9d6d399",
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
    "document": "http://localhost:3000/rails/active_storage/blobs/redirect/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBGdz09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--2702f1eb8a7a51e623a7e4dfbc62372968c41cff/21fece83-4b95-4cfc-966b-fa725b8198f5.pdf"
  }
]
```

* __GET__ api/public/v1/providers/{:provider_uuid}/service_acts/{:service_act_uuid}
#### service acts show
params

```
header:
body:
{

}

```
RESPONSE:

```
{
  "id": "e6d8272c-09f0-4ed2-9373-9776e44dc4f0",
  "order":   {
    "id": "91ec72ac-64dc-415c-a1ff-c661e038834f",
    "invoice":     {
      "uuid": "95568b29-daad-4359-9d4e-175cd36bbaf3",
      "payment_type": "balance",
      "operation_type": "purchase",
      "state": "succeeded",
      "recipient":       {
        "account_uuid": "852c6ff4-3cbd-4eb1-93c6-9299f9d6d399",
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
  "document": "http://localhost:3000/rails/active_storage/blobs/redirect/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBDdz09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--d2496e7dbdb90a7bb6692faabbc19bf8102f7c0b/e6d8272c-09f0-4ed2-9373-9776e44dc4f0.pdf",
  "licenses": [
    {
      "id": "0dcbfde5-32a8-4606-bd23-3989c70f4464",
      "title": "service.archive_5.title",
      "identifier": "archive_5",
      "description": "service.archive_5.description",
      "price": "180",
      "is_active": "true",
      "group": "archive",
      "group_description": "service.archive.group_description",
      "group_name": "service.archive.group_name",
      "device_uuid": "123456"
    }
  ]
}

```
