###########################
# Broker Vars
###########################
variable "servers" {
    type = number
    default = 1
}

#Instance Related Vars
variable "image_id" {
    type = string
}
variable "instance_type" {
    type = string
    default = "t3.medium"
}
variable "root_volume_size" {
    type = number
    default = 30
}
variable "key_pair" {
    type = string
}
variable "tags" {
    type = map
}

#Network Related Vars
variable "subnet_id" {
    type = string
}

variable "security_groups_ids" {
    type = list
    default = []
}

#DNS Related Vars
variable "dns_zone_id" {
    type = string
}
variable "dns_ttl" {
    type = string
    default = "300"
}

variable "name_template" {
    type = string
    default = "kfk$${format(\"%02.0f\", itemcount)}"
}
variable "dns_template" {
    type = string
    default = "$${name}"
}
variable "enable_dns_creation" {
    type = bool
    default = true
    description = "Generate Route53 entries for all created resources"
}
variable "extra_template_vars" {
    type = map
    default = {}
}

#SG Related Vars
variable "vpc_id" {
    type = string
}
variable "enable_sg_creation" {
    type = bool
    default = true
}
variable "sg_name" {
    type = string
    default = "CP_Kafka_Broker"
}
variable "kafka_connect_sg_ids" {
    type = list
    default = []
}
variable "ksql_sg_ids" {
    type = list
    default = []
}
variable "rest_proxy_sg_id" {
    type = string
    default = ""
}
variable "schema_registry_sg_id" {
    type = string
    default = ""
}
variable "control_center_sg_id" {
    type = string
    default = ""
}