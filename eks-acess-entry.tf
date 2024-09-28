resource "aws_eks_access_entry" "eks-acess-entry" {
  cluster_name      = aws_eks_cluster.eks-cluster.name
  principal_arn     = var.principalArn
  kubernetes_groups = ["fiap-group-23"]
  type              = "STANDARD"
}