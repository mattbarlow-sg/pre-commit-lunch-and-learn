resource "null_resource" "this" {
  provisioner "local-exec" {
    command = "echo ${var.owner} > file_${null_resource.this.id}.txt"
  }
}

// Adding a client as well
resource "null_resource" "this-too" {
  provisioner "local-exec" {
    command = "echo ${var.Client} > file_${null_resource.this.id}.txt"
  }
}
