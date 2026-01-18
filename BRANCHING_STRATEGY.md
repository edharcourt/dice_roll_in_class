# Branching strategy

1. For each new feature create a branch.

    git checkout -b step-n-initial-ui
    git add .
    git commit -m "completed step n"


2. To make sure upstream github branch is created run ...

    git config --global push.autoSetupRemote true

   You only need to do this once per machine 