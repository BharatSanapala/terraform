resource "aws_instance" "my_instance"{
    tags = {
        Name = "my_instance"
    }

    ami = "ami-08e3b3155fc937a94"
    security_group = aws_security_group.my_sg.id
    instance_type = "t3.micro"
    key_name = "mumbai_kops"
    root_block_device {
        storage_volume = 12
    }
}

resource "aws_security_group" "my_sg" {
    tags = {
        Name = "my-sg"
    }

    ingress {
        from_port = "80"
        to_port = "80"
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

     egress {
        from_port = "0"
        to_port = "0"
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }
}