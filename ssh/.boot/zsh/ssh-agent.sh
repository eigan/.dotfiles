
source ~/.config/shell/env

ssh_agent_keys=$SSH_AGENT_KEYS

if [ -f ~/.ssh/agent.env ] ; then
  . ~/.ssh/agent.env > /dev/null
  if ! kill -0 $SSH_AGENT_PID > /dev/null 2>&1; then
    echo "Stale agent file found. Spawning new agent… "
    eval `ssh-agent | tee ~/.ssh/agent.env`

    for i in ${ssh_agent_keys[@]}; do
      ssh-add $i
    done
  fi
else
  echo "Starting ssh-agent"
  eval `ssh-agent | tee ~/.ssh/agent.env`

  for i in ${ssh_agent_keys[@]}; do
    ssh-add $i
  done
fi
