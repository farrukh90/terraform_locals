resource "aws_instance" "accounting" {
	 count = "${var.servers}"
	 ami = "${element(split(",", var.ami), count.index)}"
	 instance_type = "${element(split(",", var.instance_type), count.index)}"
	 ebs_optimized = "${element(split(",", var.ebs_optimized), count.index)}"
}
