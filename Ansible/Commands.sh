ansible-galaxy install --roles-path ./roles tersmitten.fail2ban
ansible-galaxy install --roles-path ./roles geerlingguy.security

# ansible-playbook # apply a playbook to servers
# --check # dry run
# --forks
# --limit=backend # limit on which Inventory items will run
# --private-key PATH_TO_KEY # private key for ssh'ing

export ANSIBLE_NOCOWS=1 # Skip the overly verbose cows
ansible-playbook -i ./Inventory Playbook.yml

ansible-playbook -i ./Inventory Playbook.yml --limit production -u root


# https://plusbryan.com/my-first-5-minutes-on-a-server-or-essential-security-for-linux-servers

# fail2ban
# SSH user
# adduser --disabled-password --gecos "" USER
# mkdir /home/USER
# mkdir /home/USER/.ssh
# chmod 700 /home/USER/.ssh
# vim /home/USER/.ssh/authorized_keys
# chmod 400 /home/USER/.ssh/authorized_keys
# chown USER:USER /home/USER -R
# visudo # passwordless sudo
# USER ALL=(ALL) NOPASSWD:ALL

# https://galaxy.ansible.com/geerlingguy/security/