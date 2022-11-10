terraform {
  required_version = ">=0.12"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>2.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "~>3.0"
    }
  }
}

provider "azurerm" {
  features {}
}

locals {
  first_public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQC6oSKubcSdVezAt/0ZB17ND8kqhszM/fSWZ+sjyWBvKOjhQXoXUbyXK9XKN/ep0W1kBCME2QxPqAOvWgw+2du/b4IMhJHjF9MECkzt3EfgL37h2mTihYuOW91JAhB1q8NIVw+f6b86cu+Y7ZnOX8mJ4/KvfsRW9ETDq0BXOPwF8c11sqRDpiMPof242g39YZTrS4aJUrEVugLHbDxTOGCKH8wnIlrfJZDUmkfxTaJ5P7pIGgtKoVTiu6Fb5josEID6CjUrW5XSlj1FGtRsxV8F50f+mrQFE2Tx5nB4UciOrT/gZmhToflFNUGhxbDF2wQay3UupEBDbfDSCjjL7Qp06lahBF0CGYVqafJd+jG3MHTL3XnzVMdJggatzPhFgBYDgLEHwB8qka9CYG8d3z+LBDU1wULkXEYrm8mTzA5tBSliTUlvZiZUWQHj6DOY/tvr9TOM8kaun09rIqBnJdlUFhJsZuBcLMa2Fco/ukz7z8lmI+diYrx62pCYoz/ci7U= casa@DESKTOP-6CPG9BJ"
}
