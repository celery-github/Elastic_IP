provider "aws" {
    region = "eu-west-2"
}

resource "aws_instance" "ec2" {
    ami = "ami-032598fcc7ed91c7a"
    instance_type = "t2.micro"
}

resource "aws_eip" "elasticip" {
    instance = aws_instance.ec2.id
}

output "EIP" {
    value = aws_eip.elasticeip.public_ip
}

#how to create elastic IP address for an EC2 instance
# Elastic IPs remain the same after re-deplying an istance unlike Public IPs
 

#terraform init
#terraform apply
#terraform destroy
# option + command + S
