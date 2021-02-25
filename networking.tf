resource "google_compute_network" "vpc" {
   name= "prajith-10-vpc"
   auto_create_subnetworks="false"
}

resource "google_compute_subnetwork" "subnet" {
    name = "prajith-subnet"
    ip_cidr_range = "10.10.10.0/24"
    network = google_compute_network.vpc.name
    depends_on = [google_compute_network.vpc]
    region="us-central1"
}

resource "google_compute_firewall" "firewall" {
    name ="prajith-firewall"
    network = google_compute_network.vpc.name
    allow {
        protocol = "icmp"
    }
  allow {
     protocol = "tcp"
     ports = ["22"]
  }
  source_ranges = ["0.0.0.0/0"]
}

