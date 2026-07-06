
resource "aws_instance" "my-instance" {
    provider = "aws.bombay"
    ami = "ami-0d351f1b760a30161"
    tags = {
        env = "dev"
    }
    instance_type = "t3.micro"
    key_name = "mumbai_kops"
    availability_zone = "ap-south-1a"
    count = 1
    security_groups = ""
    root_block_device {
        volume_size = 10
    }
   
}