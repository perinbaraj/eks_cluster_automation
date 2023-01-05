resource "aws_eks_cluster" "hotclust" {
    
    name = "hotclust-eks"

    role_arn = aws_iam_role.eks_role.arn

    vpc_config {
        subnet_ids = [var.default1 , var.default2]
    }

}

output "endpoint" {
    value = aws_eks_cluster.hotclust.endpoint
  
}