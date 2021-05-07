
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
