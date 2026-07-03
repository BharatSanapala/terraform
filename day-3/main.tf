resource "aws_instance" "terraform-instance" {

    tags = {
        env = "dev"
    }
    ami = "ami-0d351f1b760a30161"
    instance_type = "t3.micro"
    availability_zone = "ap-south-1a"
    key_pair = "mumbai_kops"
    root_block_device {
        volume_size = 10  
    }
    security_group = "Terraform-SG"

}