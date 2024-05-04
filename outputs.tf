output "id" {
  value       = azurerm_dns_zone.dz.id
  description = "The DNS Zone ID."
}

output "name" {
  value       = azurerm_dns_zone.dz.name
  description = "The name of the DNS zone."
}

output "resource_group_name" {
  value       = azurerm_dns_zone.dz.resource_group_name
  description = "The name of the resource group in which to create the DNS zone."
}

output "tags" {
  value       = azurerm_dns_zone.dz.tags
  description = "The tags assigned to the resource."
}

output "number_of_record_sets" {
  value       = azurerm_dns_zone.dz.number_of_record_sets
  description = "The current number of record sets in this DNS zone."
}

output "max_number_of_record_sets" {
  value       = azurerm_dns_zone.dz.max_number_of_record_sets
  description = "The maximum number of record sets that can be created in this DNS zone."
}

output "soa_record" {
  value       = azurerm_dns_zone.dz.soa_record
  description = "Block containing configuration of SOA record."
}

output "a_records" {
  value       = { for a_record in azurerm_dns_a_record.a_records : a_record.name => a_record }
  description = "Blocks containing configuration of each A record."
  # module.MODULE_NAME.a_records["A_RECORD_NAME"].id
}

output "aaaa_records" {
  value       = { for aaaa_record in azurerm_dns_aaaa_record.aaaa_records : aaaa_record.name => aaaa_record }
  description = "Blocks containing configuration of each AAAA record."
  # module.MODULE_NAME.aaaa_records["AAAA_RECORD_NAME"].id
}

output "cname_records" {
  value       = { for cname_record in azurerm_dns_cname_record.cname_records : cname_record.name => cname_record }
  description = "Blocks containing configuration of each CNAME record."
  # module.MODULE_NAME.cname_records["CNAME_RECORD_NAME"].id
}

output "mx_records" {
  value       = { for mx_record in azurerm_dns_mx_record.mx_records : mx_record.name => mx_record }
  description = "Blocks containing configuration of each MX record."
  # module.MODULE_NAME.mx_records["MX_RECORD_NAME"].id
}

output "ptr_records" {
  value       = { for ptr_record in azurerm_dns_ptr_record.ptr_records : ptr_record.name => ptr_record }
  description = "Blocks containing configuration of each PTR record."
  # module.MODULE_NAME.ptr_records["PTS_RECORD_NAME"].id
}

output "srv_records" {
  value       = { for srv_record in azurerm_dns_srv_record.srv_records : srv_record.name => srv_record }
  description = "Blocks containing configuration of each SRV record."
  # module.MODULE_NAME.srv_records["SRV_RECORD_NAME"].id
}

output "txt_records" {
  value       = { for txt_record in azurerm_dns_txt_record.txt_records : txt_record.name => txt_record }
  description = "Blocks containing configuration of each TXT record."
  # module.MODULE_NAME.txt_records["TXT_RECORD_NAME"].id
}
