terraform {
  required_providers {
    dnacenter = {
      versions = ["0.2"]
      source   = "hashicorp.com/edu/dnacenter"
    }
  }
}

provider "dnacenter" {
}


# > Applications
data "dna_applications_count" "amount" {
  provider = dnacenter
}
output "amount" {
  value = data.dna_applications_count.amount
}

data "dna_applications" "list" {
  provider = dnacenter
  offset   = 0
  limit    = 4
}

output "application_list" {
  value = data.dna_applications.list
}


resource "dna_applications" "test" {
  provider = dnacenter
  name     = "itunes-video"
  items {
    application_set_id = "d31b81a3-a599-4d0c-bb6d-42bbdd0e7889"
    application_network_applications {
      app_protocol        = "tcp"
      application_subtype = "NONE"
      application_type    = "DEFAULT"
      category_id         = "edc1f53c-d89d-4e8d-a23b-6148e3857504"
      display_name        = "12608"
      dscp                = ""
      engine_id           = "13"
      help_string         = "iTunes video streaming"
      ignore_conflict     = ""
      long_description    = "iTunes is a media player and media library application developed by Apple Inc. It is used to play, download, and organize digital audio and video on personal computers running the OS X and Microsoft Windows operating systems. Through the iTunes Store, users can purchase and download music, music videos, television shows, audiobooks, podcasts, movies, etc. on their MAC/ Win PC/ iDevices running iTunes. iTunes-video refers to all video streaming media services generated by iTunes such as: play movies, TV shows, videocasts, video, etc."
      name                = "itunes-video"
      popularity          = 10
      rank                = 65535
      server_name         = ""
      traffic_class       = "MULTIMEDIA_STREAMING"
      url                 = ""
    }
    application_network_identity {
      display_name = "1461196"
      lower_port   = 0
      ports        = "80"
      protocol     = "TCP"
      upper_port   = 0
    }
  }
}


output "app_test" {
  value = dna_applications.test
}
