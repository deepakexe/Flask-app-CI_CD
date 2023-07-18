## Introduction
- This is repo is for the ci-cd project, this contains the Flask Application code which will be deployed on a 2-tier architecture.

## Pipeline
The CI-CD project is implemented using Jenkins declarative pipeline
The stages of this pipeline are:
1. Developer makes changes to the code base
2. Jenkins server fetches the source code
3. Testing the FlaskApp code for any bugs
4. Creating a Docker image of the FlaskApp and pushing it to the Dockerhub.
5. Provisioning a 2-tier architecture using terraform and it will also create the inventory file(containing all the IP and other details of the servers) for next step.
6. Configuration of the servers using Ansible playbook.
