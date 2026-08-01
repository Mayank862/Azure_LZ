terraform {
  required_providers {
    azurerm = {

        source = "hashicorp/azurerm"
        version = "4.1.0"

    }

}

}

provider "azurerm" {

    features {}

subscription_id = "b6450496-d1f8-4419-beae-6c1f8299257e"
}

