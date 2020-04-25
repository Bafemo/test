# 04/25-----Moduled script.

Create two directory inside your terraform directory : dev & module

Inside Module directory create two more directory  : vpc & ec2
Vpc will have network.tf & vars.tf
Ec2 will have instance.tf & vars.tf
inside dev directory create : main.tf
Note: Terraform variable format is written using 2 format types; the old version and new version.
Most of the previous infrastructure was written using the old format style “${...}”
Navigate to Dev folder as working directory and run Init/Plan/apply -auto-approve
