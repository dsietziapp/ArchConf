# archconf-s3.yaml

## Resource Types
+ [AWS::S3::Bucket](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket.html)
+ [AWS::S3::BucketPolicy](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-policy.html)

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
| shared:archconf:bucket:name  | Name of the s3 bucket           |
| shared:archconf:bucket:arn   | AWS arn of the s3 bucket        |

## Further Reading