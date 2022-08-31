# Act Demo

## What is act

act is used to run GitHub Actions locally

## Why act

* fast feedback, rather than having to commit/push to test changes to `.github/workflow`, `act` is used to run actions locally

## How does it work

`act` reads in GitHub Actions from `.github/workflows/` and determines what actions to run. It uses the Docker API to either pull or build required images.

## Secrets

* `act -s MY_SECRET=somevalue` : use `somevalue` as the value for `MY_SECRET`
* `act -s MY_SECRET` : check for environmental variable named `MY_SECRET` and use it if it exists
* `act --secrete-file my.secrets` : load secret values from `my.secrets` file (same format as `.env` file)

## Demo

* `act -j test` : run the tests
* `act` : run the entire pipeline
* `act -l` : view the execution graph

## Run specific GitHub Events

`act pull_request`

## Run specific jobs

`act -j job_name`

## Run in dry mode

`act -n`
