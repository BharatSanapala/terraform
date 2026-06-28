resorce "aws_instance" "myserver" {
    tags = {
        Name = "bharat"
        env = "dev"
        client = "Tata"
    }

    ami = "ami-01f3f4b95d125a9af"
    instance_type = "t3.micro"
    key_name = "terraform"
    availability_zone = "ap-south-2a"
    count = 2

    root_block_device {
        volume_size = 10
    }
}