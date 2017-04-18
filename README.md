# devops-workshop

#### ABOUT

**devops-workshop** consists of a set of *cloudformation* templates as well as yaml files of *codebuild* and *codedeploy*, demostrating how to create a EC2-based CI/CD pipelines.



#### HOWTO

1. create the basic cloudformation stack  with **cloudformation/00-cfn-codepipeline-base.yml**

   *note:* 

   - In the cloudformation parameters, set **UseCodeCommit** to **yes** if you'd like to use *CodeCommit* instead of *Github* 
   - If you set **UseCodeCommit** to **no**, you need to create a github token from https://github.com/settings/tokens and input other github parameters.

2. by running the initial codepipeline, it will create three standalone environments for you: ***beta, gamma, prod***. Each environment will have its standalone resources including VPC, subnets, EC2, ELB, ASG,etc.

3. update the basic cloudformation stack with **cloudformation/01-cfn-codepipeline.yml**

4. go to codedeploy console, associate each deployment group with the autoscaling group of each environment respectively.

5. DONE

