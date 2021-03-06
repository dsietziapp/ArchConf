# Modules

The following modules are to deployed in the following order:

### application-archconf
Performs the default steps to setup the application, (registration, secret, etc).
> NOTE: Make sure to rename the CFT based on your applicaiton name.
> + .iapp/manifest.yaml
> + cloudformation/application-archconf.yaml
> + cloudformation/application-archconf.md

Template: [application-archconf](./application-archconf.md)

### archconf-iam
Provides the base security, IAM, and access configuration
> + role
> + group
> + user
> + profile
> + policies

Template: [archconf-iam](./archconf-iam.md)

### archconf-s3
Provides the base security, IAM, and access configuration
> + bucket
> + bucket policy

Template: [archconf-s3](./archconf-s3.md)

### Example Calling Custom Resources
Provides an example Stack that call custom resources to reference networking resources, (e.g.: VPN, Subnet, Security Group).

Template: [template](./template.md)