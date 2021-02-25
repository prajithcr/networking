output "prajith-vpc" {
    value = google_compute_network.vpc.id
}

output "prajith-subnet" {
   value = google_compute_subnetwork.subnet.id
}

output "prajith-firewall" {
   value = google_compute_firewall.firewall.id
}
