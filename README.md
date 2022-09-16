# Skupper-canary

Demonstrates a possible configuration to enable Canary Deployments with skupper-router.

# Setting up the whole network

```
# Create the site-a and site-b namespaces
./prepare.sh

# Deploy nginx, curl and all the routers and services
./apply.sh
```

If for some reason you need to change something, run the `./delete.sh` script
and then re-run the `./apply.sh` to redeploy everything.

# Running the tests

```
./run-curl.sh
```

# Cleanup

Once done, simply remove the namespaces.
