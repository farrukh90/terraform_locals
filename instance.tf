module "accounting" {
	source = "./module"
	servers = 3
	ami = "ami-013be31976ca2c322"
	instance_type = "t2.micro,t2.medium,t2.large"
	ebs_optimized = "true,false,true"
}
