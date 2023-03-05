#vpc id
vpc_id="vpc-0bd00dc8e32ecdc5c"
myname="amira"

#database instance variables
allocated_storage =5
storage_type      ="gp2"
username          ="amira"
password          ="amira123"
instance_class    ="db.t2.micro"
engine_version    ="8.0.27"
engine            ="mysql"

#web instance variables
web_instance_ami = "ami-0b029b1931b347543"
instance_type    = "t2.micro"
key_pair         =  "amira-keypair"