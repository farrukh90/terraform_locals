resource "local_file" "testfile" {
	content = "${path.module}" 
        filename = "${path.module}/testfile"
}
