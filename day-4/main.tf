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
    security_groups = "my_sg"
    root_block_device {
        volume_size = 10
    }
   
}

resource "aws_security_group" "my_sg" {
    ingress {
        from_port = 80
        to_port = 80
        protocol = "tcp"
        cidr_blocks = "[0.0.0.0/0]"
    }

}