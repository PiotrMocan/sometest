# README


* __GET__ api/public/v1/providers/{:provider_uuid}/catalogs
```
{
  "request": {
    "name": "catalog show",
    "method": "GET",
    "header": "",
    "body": {
      "device_uuid": "123456"
    }
  }
}
```
* __POST__ api/public/v1/providers/{:provider_uuid}/catalogs/
```
{
  "request": {
    "name": "catalog create",
    "method": "POST",
    "header": "",
    "body": {
      "device_uuid": "123456"
    }
  }
}
```
* __PATCH__ api/public/v1/providers/{:provider_uuid}/catalogs
```
{
  "request": {
    "name": "catalog update",
    "method": "PATCH",
    "header": "",
    "body": {
      "device_uuid": "123456",
      "licenses": "[{"id"=>"bbc0dc6e-f18b-49fc-ab3a-fb65915febe8", "active"=>true, "price"=>80}]"
    }
  }
}
```
* __GET__ api/public/v1/providers/{:provider_uuid}/orders/current
```
{
  "request": {
    "name": "order show",
    "method": "GET",
    "header": "",
    "body": ""
  }
}
```
* __PATCH__ api/public/v1/providers/{:provider_uuid}/orders/clear_order
```
{
  "request": {
    "name": "order clear",
    "method": "PATCH",
    "header": "",
    "body": ""
  }
}
```
* __PATCH__ api/public/v1/providers/{:provider_uuid}/orders/add_item
```
{
  "request": {
    "name": "order add_item",
    "method": "PATCH",
    "header": "",
    "body": {
      "license_id": "6f6cafe1-bc12-44da-b93a-02b7857c22e6"
    }
  }
}
```
* __PATCH__ api/public/v1/providers/{:provider_uuid}/orders/remove_item
```
{
  "request": {
    "name": "order remove item",
    "method": "PATCH",
    "header": "",
    "body": {
      "license_id": "226a7d7b-3998-474b-bf6e-a4cd71dd5b3e"
    }
  }
}
```
* __POST__ api/public/v1/providers/{:provider_uuid}/orders/checkout
```
{
  "request": {
    "name": "order checkout",
    "method": "POST",
    "header": "",
    "body": {
      "payment_type": "card"
    }
  }
}
```
* __GET__ api/public/v1/providers/{:provider_uuid}/orders
```
{
  "request": {
    "name": "order index",
    "method": "GET",
    "header": "",
    "body": ""
  }
}
```
* __GET__ api/public/v1/providers/{:provider_uuid}/balances
```
{
  "request": {
    "name": "balance show",
    "method": "GET",
    "header": "",
    "body": {
      "provider_uuid": "cca91486-cfd5-4376-8c11-e9acb99a3957"
    }
  }
}
```
* __GET__ api/public/v1/providers/{:provider_uuid}/balances/operations
```
{
  "request": {
    "name": "balance operations",
    "method": "GET",
    "header": "",
    "body": {
      "amount": "10000"
    }
  }
}
```
* __POST__ api/public/v1/providers/{:provider_uuid}/balances/refill
```
{
  "request": {
    "name": "balance refill",
    "method": "POST",
    "header": "",
    "body": {
      "provider_uuid": "cca91486-cfd5-4376-8c11-e9acb99a3957",
      "amount": "1000"
    }
  }
}
```
