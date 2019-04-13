resource "aws_s3_bucket" "sheldonkwok_backup" {
  bucket        = "sheldonkwok-backup"
  acl           = "private"
  force_destroy = true

  lifecycle_rule {
    enabled = true

    transition {
      days          = 30
      storage_class = "STANDARD_IA"
    }
  }
}
