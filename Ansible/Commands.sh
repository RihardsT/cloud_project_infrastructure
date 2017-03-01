ansible-galaxy install --roles-path ./roles tersmitten.fail2ban
ansible-galaxy install --roles-path ./roles geerlingguy.security
# ansible-galaxy install amidos.install-docker -p ./roles # for some reason this role failed for me

# ansible-playbook # apply a playbook to servers
# --check # dry run
# --forks
# --limit=backend # limit on which Inventory items will run
# --private-key PATH_TO_KEY # private key for ssh'ing

export ANSIBLE_NOCOWS=1 # Skip the overly verbose cows
ansible-playbook -i ./Inventory Playbook.yml --limit backend

# when first setting up, had to use -u root, as it was the default ssh user
ansible-playbook -i ./Inventory Playbook.yml --limit production -u root


# https://plusbryan.com/my-first-5-minutes-on-a-server-or-essential-security-for-linux-servers
# https://galaxy.ansible.com/geerlingguy/security/