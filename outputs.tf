output "Jenkins-Master-Node-Public-IP" {
  value = aws_instance.jenkins-master-instance.*.public_ip
}

output "Jenkins-Worker-Node-Public-IP" {
  value = {
    for instance in aws_instance.jenkins-worker-instance :
    instance.id => instance.public_ip
  }
}

output "FrontEnd-LB-DNS-NAME" {
  value = aws_alb.application-lb-master.dns_name
}

output "FrontendBalancer-URL" {
  value = aws_route53_record.frontend-lb.fqdn
}