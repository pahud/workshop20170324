# devops-workshop

### ABOUT

**devops-workshop** consists of a set of *cloudformation* templates as well as yaml files of *codebuild* and *codedeploy*, demostrating how to create a EC2-based CI/CD pipeline.



### HOWTO

1. create the basic cloudformation stack  with **cloudformation/00-cfn-codepipeline-base.yml** or click the button to launch the stack in us-west-2




[![cloudformation-launch-stack](https://s3.amazonaws.com/cloudformation-examples/cloudformation-launch-stack.png)](https://console.aws.amazon.com/cloudformation/home?region=us-west-2#/stacks/new?stackName=devopsDemo&templateURL=https://s3-us-west-2.amazonaws.com/pahud-cfn-us-west-2/devops-workshop/00-cfn-codepipeline-base.yml)



configuring the stack name as "**devopsDemo**"

   *note:* 

- In the cloudformation parameters, set **UseCodeCommit** to **yes** if you'd like to use *CodeCommit* instead of *Github* 
   - If you set **UseCodeCommit** to **no**, you need to fork this git repo,  creating a github token from https://github.com/settings/tokens and input other github parameters.

2. by running the initial codepipeline, it will create three standalone environments for you: ***beta, gamma, prod***. Each environment will have its standalone resources including IAM roles, VPC, subnets, EC2, ELB, ASG,etc.

3. update the **devopsDemo** cloudformation stack with **cloudformation/01-cfn-codepipeline.yml**

4. go to codedeploy console, associate each deployment group with the autoscaling group of each environment respectively.

5. trigger the codepipeline by updating the git repo or just click the **Release change** button and see how it deploys each environment respectively.

6. DONE

