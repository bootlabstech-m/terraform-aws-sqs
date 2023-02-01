variable "no_of_queues" {
  type        = number
  description = "no_of_queues"
}
variable "queue_name" {
  type        = list(string)
  description = "queue_name"
}
variable "delay_seconds" {
  type        = number
  description = "The time in seconds that the delivery of all messages in the queue will be delayed.An integer from 0 to 900,default 0"
}
variable "max_message_size" {
  type        = number
  description = "The limit of how many bytes a message can contain.An integer from 1024 bytes (1 KiB) up to 262144 bytes (256 KiB),default is 262144 (256 KiB)."
}
variable "message_retention_seconds" {
  type        = number
  description = "The number of seconds SQS retains a message. Integer representing seconds, from 60 (1 minute) to 1209600 (14 days),default is 345600 (4 days)"
}
variable "receive_wait_time_seconds" {
  type        = number
  description = "The time for which a ReceiveMessage call will wait for a message to arrive (long polling) before returning. An integer from 0 to 20 (seconds), default is 0"
}

variable "region" {
  type        = string
  description = "region of the SQS."
}
variable "role_arn" {
  description = " The ARN of the IAM role"
  type = string
}