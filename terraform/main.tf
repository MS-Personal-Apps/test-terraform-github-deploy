# Provisioning scripts for Nginx, MySQL, PHPMyAdmin, Node.js, and PM2
resource "aws_instance" "example_instance" {
  ami           = var.instance_ami
  instance_type = var.instance_type
  key_name      = var.key_pair_name
ebs_optimized = true
  user_data = <<-EOF
              #!/bin/bash
              sudo yum update -y
              sudo yum install -y nginx

              # Install MySQL
              sudo amazon-linux-extras install -y mysql8
              sudo systemctl start mysqld
              sudo systemctl enable mysqld

              # Install PHPMyAdmin
              sudo amazon-linux-extras install -y epel
              sudo yum install -y phpMyAdmin

              # Install Node.js and PM2
              sudo yum install -y nodejs
              sudo npm install -g pm2

              # Start services
              sudo systemctl start nginx
              sudo systemctl enable nginx
              EOF
}


