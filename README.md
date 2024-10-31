# Setting Up a Local Kubernetes Cluster with Kind and Terraform

This repository contains scripts and configurations to set up a local Kubernetes cluster using [kind](https://kind.sigs.k8s.io/) and manage it with [Terraform](https://www.terraform.io/). 

## Prerequisites

- [Docker](https://www.docker.com/)
- [kind](https://kind.sigs.k8s.io/)
- [kubectl](https://kubernetes.io/docs/tasks/tools/install-kubectl/)
- [Helm](https://helm.sh/docs/intro/install/)
- [Terraform](https://www.terraform.io/)

## Usage

1. **Initialize Terraform:**
    ```sh
    make init
    ```

2. **Validate Terraform configuration:**
    ```sh
    make validate
    ```

3. **Plan Terraform changes:**
    ```sh
    make plan
    ```

4. **Apply Terraform changes:**
    ```sh
    make apply AUTO_APPROVE=-auto-approve
    ```

5. **Destroy Terraform resources:**
    ```sh
    make destroy AUTO_APPROVE=-auto-approve
    ```

## Contributing

Feel free to fork this repository and submit pull requests. Any contributions, suggestions, or improvements are welcome!

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.