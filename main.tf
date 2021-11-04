resource "null_resource" "this" {
  provisioner "local-exec" {
    command = "echo ${var.owner} > file_${null_resource.this.id}.txt"
  }
}

resource "null_resource" "this_too" {
  provisioner "local-exec" {
    command = "echo ${var.owned} > file_${null_resource.this.id}.txt"
  }
}
