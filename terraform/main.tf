# AWS instance resource
resource "aws_instance" "example_instance" {
  ami           = var.instance_ami
  instance_type = var.instance_type
  key_name      = var.key_pair_name

  user_data = <<-EOF
              #!/bin/bash
              
              # Update the system
              sudo yum update -y
              
              # Install and configure Nginx
              sudo yum install -y nginx
              sudo systemctl start nginx
              sudo systemctl enable nginx

              # Install and start MySQL
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
              sudo systemctl restart nginx
              EOF
}
