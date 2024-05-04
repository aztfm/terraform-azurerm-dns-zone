# Azure DNS Zone - Terraform Module

[![pre-commit](https://img.shields.io/badge/pre--commit-enabled-brightgreen?logo=pre-commit)](https://github.com/pre-commit/pre-commit)
[![Terraform Registry](https://img.shields.io/badge/terraform-registry-blueviolet.svg)](https://registry.terraform.io/modules/aztfm/dns-zone/azurerm/)
![GitHub release (latest by date)](https://img.shields.io/github/v/release/aztfm/terraform-azurerm-dns-zone)

[![Open in GitHub Codespaces](https://github.com/codespaces/badge.svg)](https://codespaces.new/aztfm/terraform-azurerm-dns-zone?quickstart=1)

## Version compatibility

| Module version | Terraform version | AzureRM version |
| -------------- | ----------------- | --------------- |
| >= 1.x.x       | >= 1.3.x          | >= 3.65.0       |

<!-- BEGIN_TF_DOCS -->
## Parameters

The following parameters are supported:

| Name | Description | Type | Default | Required |
| ---- | ----------- | :--: | :-----: | :------: |
|name|The name of the DNS zone.|`string`|n/a|yes|
|resource\_group\_name|The name of the resource group in which to create the DNS zone.|`string`|n/a|yes|
|tags|A mapping of tags to assign to the resource.|`map(string)`|`{}`|no|
|soa\_record|Enables you to manage DNS SOA Record within Azure DNS zone.|`object({})`|`null`|no|
|a\_records|Enables you to manage DNS A Records within Azure DNS zone.|`list(object({}))`|`[]`|no|
|aaaa\_records|Enables you to manage DNS A Records within Azure DNS zone.|`list(object({}))`|`[]`|no|
|cname\_records|Enables you to manage DNS CNAME Records within Azure DNS zone.|`list(object({}))`|`[]`|no|
|mx\_records|Enables you to manage DNS MX Records within Azure DNS zone.|`list(object({}))`|`[]`|no|
|ptr\_records|Enables you to manage DNS PTR Records within Azure DNS zone.|`list(object({}))`|`[]`|no|
|srv\_records|Enables you to manage DNS SRV Records within Azure DNS zone.|`list(object({}))`|`[]`|no|
|txt\_records|Enables you to manage DNS TXT Records within Azure DNS zone.|`list(object({}))`|`[]`|no|

The `soa_record` supports the following:

| Name | Description | Type | Default | Required |
| ---- | ------------| :--: | :-----: | :------: |
|email|The email contact for the SOA record.|`string`|n/a|yes|
|tags|A mapping of tags to assign to the Record Set.|`map(string)`|`null`|no|
|expire\_time|The expire time for the SOA record.|`number`|`null`|no|
|minimum\_ttl|The minimum Time To Live for the SOA record. By convention, it is used to determine the negative caching duration.|`number`|`null`|no|
|refresh\_time|The refresh time for the SOA record.|`number`|`null`|no|
|retry\_time|The retry time for the SOA record.|`number`|`null`|no|
|ttl|The Time To Live of the SOA Record in seconds.|`number`|`null`|no|

The `a_records` supports the following:

| Name | Description | Type | Default | Required |
| ---- | ------------| :--: | :-----: | :------: |
|name|The name of the DNS A Record.|`string`|n/a|yes|
|tags|A mapping of tags to assign to the resource.|`map(string)`|`null`|no|
|ttl|The Time To Live (TTL) of the DNS record in seconds.|`number`|n/a|yes|
|records|List of IPv4 Addresses.|`list(string)`|n/a|yes|

The `aaaa_records` supports the following:

| Name | Description | Type | Default | Required |
| ---- | ------------| :--: | :-----: | :------: |
|name|The name of the DNS AAAA Record.|`string`|n/a|yes|
|tags|A mapping of tags to assign to the resource.|`map(string)`|`null`|no|
|ttl|The Time To Live (TTL) of the DNS record in seconds.|`number`|n/a|yes|
|records|List of IPv6 Addresses.|`list(string)`|n/a|yes|

The `cname_records` supports the following:

| Name | Description | Type | Default | Required |
| ---- | ------------| :--: | :-----: | :------: |
|name|The name of the DNS CNAME Record.|`string`|n/a|yes|
|tags|A mapping of tags to assign to the resource.|`map(string)`|`null`|no|
|ttl|The Time To Live (TTL) of the DNS record in seconds.|`number`|n/a|yes|
|record|The target of the CNAME.|`string`|n/a|yes|

The `mx_records` supports the following:

| Name | Description | Type | Default | Required |
| ---- | ------------| :--: | :-----: | :------: |
|name|The name of the DNS MX Record.|`string`|n/a|yes|
|tags|A mapping of tags to assign to the resource.|`map(string)`|`null`|no|
|ttl|The Time To Live (TTL) of the DNS record in seconds.|`number`|n/a|yes|
|records|A list of values that make up the MX record.|`list(object({})`|n/a|yes|

The `mx_records.records` supports the following:

| Name | Description | Type | Default | Required |
| ---- | ------------| :--: | :-----: | :------: |
|preference|String representing the preference value of the MX records. Records with lower preference value take priority.|`number`|n/a|yes|
|exchange|The mail server responsible for the domain covered by the MX record.|`string`|n/a|no|

The `ptr_records` supports the following:

| Name | Description | Type | Default | Required |
| ---- | ------------| :--: | :-----: | :------: |
|name|The name of the DNS PTR Record.|`string`|n/a|yes|
|tags|A mapping of tags to assign to the resource.|`map(string)`|`null`|no|
|ttl|The Time To Live (TTL) of the DNS record in seconds.|`number`|n/a|yes|
|records|List of Fully Qualified Domain Names.|`list(string)`|n/a|yes|

The `srv_records` supports the following:

| Name | Description | Type | Default | Required |
| ---- | ------------| :--: | :-----: | :------: |
|name|The name of the DNS SRV Record.|`string`|n/a|yes|
|tags|A mapping of tags to assign to the resource.|`map(string)`|`null`|no|
|ttl|The Time To Live (TTL) of the DNS record in seconds.|`number`|n/a|yes|
|records|A list of values that make up the SRV record.|`list(object({})`|n/a|yes|

The `srv_records.records` supports the following:

| Name | Description | Type | Default | Required |
| ---- | ------------| :--: | :-----: | :------: |
|priority|Priority of the SRV record.|`number`|n/a|yes|
|weight|Weight of the SRV record.|`number`|n/a|no|
|port|Port the service is listening on.|`number`|n/a|yes|
|target|FQDN of the service.|`string`|n/a|yes|

The `txt_records` supports the following:

| Name | Description | Type | Default | Required |
| ---- | ------------| :--: | :-----: | :------: |
|name|The name of the DNS TXT Record.|`string`|n/a|yes|
|tags|A mapping of tags to assign to the resource.|`map(string)`|`null`|no|
|ttl|The Time To Live (TTL) of the DNS record in seconds.|`number`|n/a|yes|
|records|A list of values that make up the txt record.|`list(string)`|n/a|yes|

## Outputs

The following outputs are exported:

| Name | Description | Sensitive |
| ---- | ------------| :-------: |
|id|The DNS Zone ID.|no|
|name|The name of the DNS zone.|no|
|resource_group_name|The name of the resource group in which to create the DNS zone.|no|
|tags|The tags assigned to the resource.|no|
|number_of_record_sets|The current number of record sets in this DNS zone.|no|
|max_number_of_record_sets|The maximum number of record sets that can be created in this DNS zone.|no|
|soa_record|Block containing configuration of SOA record.|no|
|a_records|Blocks containing configuration of each A record.|no|
|aaaa_records|Blocks containing configuration of each AAAA record.|no|
|cname_records|Blocks containing configuration of each CNAME record.|no|
|mx_records|Blocks containing configuration of each MX record.|no|
|ptr_records|Blocks containing configuration of each PTR record.|no|
|srv_records|Blocks containing configuration of each SRV record.|no|
|txt_records|Blocks containing configuration of each TXT record.|no|
<!-- END_TF_DOCS -->
