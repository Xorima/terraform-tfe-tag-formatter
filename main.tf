locals {
    formatted_string = replace(replace(var.input_string,"/[^a-zA-Z\\d\\-_:]/","*"),"/[^a-zA-Z\\d\\-_:]+/",var.replacement)
}


