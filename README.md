# README


* __GET__ api/public/v1/providers/{:provider_uuid}/catalogs
### catalog show
params
```
header:
body:
{
  "device_uuid": "123456"
}
```
* __POST__ api/public/v1/providers/{:provider_uuid}/catalogs/
### catalog create
params
```
header:
body:
{
  "device_uuid": "123456"
}
```
* __PATCH__ api/public/v1/providers/{:provider_uuid}/catalogs
### catalog update
params
```
header:
body:
{
  "device_uuid": "123456",
  "licenses": "[{"id"=>"bbc0dc6e-f18b-49fc-ab3a-fb65915febe8", "active"=>true, "price"=>80}]"
}
```
* __GET__ api/public/v1/providers/{:provider_uuid}/orders/current
### order show
params
```
header:
body:
{

}
```
* __PATCH__ api/public/v1/providers/{:provider_uuid}/orders/clear_order
### order clear
params
```
header:
body:
{

}
```
* __PATCH__ api/public/v1/providers/{:provider_uuid}/orders/add_item
### order add_item
params
```
header:
body:
{
  "license_id": "6f6cafe1-bc12-44da-b93a-02b7857c22e6"
}
```
* __PATCH__ api/public/v1/providers/{:provider_uuid}/orders/remove_item
### order remove item
params
```
header:
body:
{
  "license_id": "226a7d7b-3998-474b-bf6e-a4cd71dd5b3e"
}
```
* __POST__ api/public/v1/providers/{:provider_uuid}/orders/checkout
### order checkout
params
```
header:
body:
{
  "payment_type": "card"
}
```
* __GET__ api/public/v1/providers/{:provider_uuid}/orders
### order index
params
```
header:
body:
{

}
```
* __GET__ api/public/v1/providers/{:provider_uuid}/balances
### balance show
params
```
header:
body:
{
  "provider_uuid": "cca91486-cfd5-4376-8c11-e9acb99a3957"
}
```
* __GET__ api/public/v1/providers/{:provider_uuid}/balances/operations
### balance operations
params
```
header:
body:
{
  "amount": "10000"
}
```
* __POST__ api/public/v1/providers/{:provider_uuid}/balances/refill
### balance refill
params
```
header:
body:
{
  "provider_uuid": "cca91486-cfd5-4376-8c11-e9acb99a3957",
  "amount": "1000"
}
```
