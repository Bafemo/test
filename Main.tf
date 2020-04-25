provider "aws" {
   version  = "~> 2.54"
   region   = "us-east-1"
   shared_credentials_file = "~/.aws/credentials"
   profile = "default"

}


module "my_vpc" {

   source   = "../module/vpc"
   vpc_cidr = "10.0.0.0/16"
   tenancy  = "default"
   subnet_cidr_public  = "10.0.1.0/24"
   subnet_cidr_private = "10.0.2.0/24"

}

module "my_ec2" {

   source            = "../module/ec2"
   ec2_ami           = "ami-0a313d6098716f372"
   ec2_instance_type = "t2.micro"
   subnet_id_public  = "${module.my_vpc.subnet_id_public}"   
}







