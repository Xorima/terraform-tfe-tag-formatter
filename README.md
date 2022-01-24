# terraform-tfe-tag-formatter

A Terraform module to convert any inputted string into a valid TFC/TFE Tag

This module does not provide any resources, it simply wraps the regex logic needed to modify and inputted string
## Variables
| Name | Type | Default | Description |
|---|---|---|---|
| input_string | `string` | | Required. The string you wish to format as a terraform tag |
| replacement | `string` | `-` | Optional. The character to replace disallowed characters with |

## Outputs

| Name | Description |
|---|---|
| string | The formatted string

## Example

```terraform
module "tag" {
    source = "xorima/terraform-tfe-tag-formatter"
    input_string = "My Oddly Formatted Input String 794£*£)(foo~]['¬`bar"

locals {
    tag = module.tag.string
}
    
```

This would cause the output to be: `My-Oddly-Formatted-Input-String-794-foo-bar`
