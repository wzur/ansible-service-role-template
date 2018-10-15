A role template for Ansible Galaxy
==================================

Create new role for a service with `ansible-galaxy` 

```bash
ansible-galaxy init --role-skeleton ansible-service-role-template YOUR_ROLE_NAME
```

Fix all TODOs and test with `run-test`:

```bash
chmod a+x ./run-test
./run-test
```

By default tests are executed for Ubuntu (`bionic`, `xenial` & `trusty`) and for CentOS 6 & 7. This is controlled
by [Vagrantfile](./Vagrantfile)