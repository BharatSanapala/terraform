provider "aws" {
    region = "ap-south-1"
    alias = mumbai
}

resource "aws_instance" "my-instance" {
    provider = mumbai
    name = "my-ec2"
    ami_id = "ami-0d351f1b760a30161"
    tags = {
        env = dev
    }
    instance_type = "t3.micro"
    key_name = "mumbai_kops"
    availability_zone = "ap-south-1a"
    count = 1
    security_group = ""
    root_block_device {
        volume_size = 10
    }
   
}