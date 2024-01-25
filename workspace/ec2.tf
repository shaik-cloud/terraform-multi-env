resource "aws_instance" "web" {
  ami           = "ami-0a346c29399cd4934" #devops-practice
  instance_type = lookup(var.instance_type, terraform.workspace)

  tags = {
    Name = "HelloTerraform"
  }
}