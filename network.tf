#vpc

resource "aws_vpc" "main" {

   cidr_block       = var.vpc_cidr
   instance_tenancy = var.tenancy

   tags = {
       Name = "Femi-vpc"
   }
 }

#public subnet

resource "aws_subnet" "public" {
  vpc_id     = aws_vpc.main.id
 cidr_block = var.subnet_cidr_public

 tags = {
     Name = "Femi-public"
 }
}

#private subnet

resource "aws_subnet" "private" {
  vpc_id     = aws_vpc.main.id
 cidr_block = var.subnet_cidr_private

 tags = {
     Name = "Femi-private"
 
 }

}

output "vpc_id" {
 value = aws_vpc.main.id
}

output "subnet_id_public" {
 value = aws_subnet.public.id
}
output "subnet_id_private" {
 value = aws_subnet.private.id
}
