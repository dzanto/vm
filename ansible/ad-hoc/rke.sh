ANSIBLE_CONFIG=../ansible.cfg ansible-playbook ../playbooks/runrole/runrole.yml -e "hosts=myservers role=rke"