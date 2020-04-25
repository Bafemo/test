
resource "aws_instance" "web" {

ami           = var.ec2_ami
instance_type = var.ec2_instance_type
subnet_id     = var.subnet_id_public

tags = {

   Name = "Femi"
   }
 }
