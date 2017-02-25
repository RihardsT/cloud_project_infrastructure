ansible-galaxy install --roles-path ./roles tersmitten.fail2ban
ansible-galaxy install --roles-path ./roles geerlingguy.security

# ansible-playbook # apply a playbook to servers
# --check # dry run
# --forks
# --limit=backend # limit on which Inventory items will run

export ANSIBLE_NOCOWS=1 # Skip the overly verbose cows
ansible-playbook -i ./Inventory Playbook.yml