data "aws_subnet" "public1" {
  id = "subnet-0024abda92a12ab44"
}
data "aws_subnet" "public2" {
  id = "subnet-01157634af20dd41a"
}
data "aws_subnet" "public3" {
  id = "subnet-02af63243b717ce34"
}

module "accounting" {
	source = "./module"
	servers = 3
	ami = "ami-013be31976ca2c322"
	instance_type = "t2.micro,t2.medium,t2.large"
	ebs_optimized = "true,false,true"
	subnet_id = "${data.aws_subnet.public1.id},${data.aws_subnet.public2.id},${data.aws_subnet.public3.id}"
}
