resource "aws_sqs_queue" "terraform_queue" {
  count                               = var.no_of_queues  
  name                                = var.queue_name[count.index]
  visibility_timeout_seconds          = var.visibility_timeout_seconds
  delay_seconds                       = var.delay_seconds
  max_message_size                    = var.max_message_size
  message_retention_seconds           = var.message_retention_seconds
  receive_wait_time_seconds           = var.receive_wait_time_seconds
  fifo_queue                          = var.fifo_queue
  fifo_throughput_limit               = var.fifo_queue ? var.fifo_throughput_limit : null
  kms_master_key_id                   = var.kms_master_key_id
  kms_data_key_reuse_period_seconds   = var.kms_data_key_reuse_period_seconds
  deduplication_scope                 = var.fifo_queue ? var.deduplication_scope : null
 
  lifecycle {
    ignore_changes = [tags]
  } 
}