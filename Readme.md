A01Store
--------

A01Store service accept automation tests scheduled by the Control (or user) and store it in a database. The test tasks are available to the automation droids. The A01Store plays a passive role in the producer-consumer releationship meaning the driver is the consumer (A01Droid).

# Basic
- Python 3 (3.6)
- Contaienr based
- Flask

# Deployments note
- Set up namespace.
- Set up context.
- Set up secret. The vault is a0secret
- Set up private docker registry secret using sp azureclidev-contributor