$account = az account show | ConvertFrom-Json

$env:ARM_SUBSCRIPTION_ID = $account.id
$env:ARM_TENANT_ID = $account.tenantId
$env:ARM_CLIENT_ID = $account.user.name
$env:ARM_CLIENT_SECRET = $account.user.password

terraform fmt
terraform init
terraform validate
terraform apply -auto-approve
