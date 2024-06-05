### Prerequisites

* Set up config file for acces to Helm and Kubernetes Cluster(I added a examplel of this configuration: config.example) 
* set value config_context (Cluster context)

### Plan and apply the resources

First, we have to initialise the directory for Terraform with the following CLI command:
```
terraform init
```

Then we can have a dry-run of applying our resources:
```
terraform plan
```

If we are happy with the changes, we can then go ahead and apply the changes -- you will be asked for approval again:
```
terraform apply
```

Once the command terminal you can add interectivecly the name and repo url of the helm chart 