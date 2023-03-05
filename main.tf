module "myprojectModules"{
    source="../modules"
    vpc_id= var.vpc_id
    myname=var.myname
    #database instance variables
    allocated_storage =var.allocated_storage
    storage_type      =var.storage_type
    username          =var.username
    password          =var.password
    instance_class    =var.instance_class
    engine_version    =var.engine_version
    engine            =var.engine

    #web instance variables
    web_instance_ami = var.web_instance_ami
    instance_type    = var.instance_type
    key_pair         = var.key_pair
}
# add backened Configurations to s3 bucket
terraform {
    backend "s3" {
    bucket = "amira-bucket"
    key    = "amira-backend-file"
    region = "us-west-1"
  }
}