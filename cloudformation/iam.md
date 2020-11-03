# application-archconf.yaml

## Resource Types
+ [AWS::IAM::Group](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-group.html)
+ [AWS::IAM::InstanceProfile](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-instanceprofile.html)
+ [AWS::IAM::ManagedPolicy](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-managedpolicy.html)
+ [AWS::IAM::Role](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-role.html)
+ [AWS::IAM::User](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-user.html)

## Template Parameters
| Parameter                 | Type    | Description                                                                                                             |
| ------------------------- | ------- | ----------------------------------------------------------------------------------------------------------------------- |
| pOrganization             | String  | The name of the portfolio that identifies its products, applications, and components | 
| pPortfolio                | String  | The name of the portfolio that identifies its products, applications, and components |
| pProduct                  | String  | The name of the product that identifies its applications and components |
| pApplication              | String  | The name of the application (or service module) that identifies its components |
| pComponent                | String  | The name of the component that aligns with the application or service module |
| pDepartment               | String  | The name of the department that owns the resource |
| pEnvironment              | String  | The name of the environment in which the resource is running (e.g.: sandbox, development, test, production) |
| pSupportEmail             | String  | The email address of the support team to contact |

## Exports
| Name                         | Description                     |
| ---------------------------- | ------------------------------- |
| shared:archconf:role:name    | Name of the ArchConf role       |
| shared:archconf:role:arn     | AWS arn of the ArchConf role    |
| shared:archconf:group:name   | Name of the ArchConf group      |
| shared:archconf:group:arn    | AWS arn of the ArchConf group   |
| shared:archconf:profile:name | Name of the ArchConf profile    |
| shared:archconf:profile:arn  | AWS arn of the ArchConf profile |
| shared:archconf:user:arn     | AWS arn of the ArchConf user    |

## Further Reading