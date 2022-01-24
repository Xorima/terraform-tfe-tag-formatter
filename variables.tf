variable "input_string" {
    type = string
    description = "The string you wish to alter"
}

variable "replacement" {
    type = string
    default = "-"
    description = "What to replace disallowed characters with"
}