# Act Demo

## What is act

`act` is used to run GitHub Actions locally

## Why act

* fast feedback, rather than having to commit/push to test changes to `.github/workflow`, `act` is used to run actions locally

## How does it work

`act` reads in GitHub Actions from `.github/workflows/` and determines what actions to run. It uses the Docker API to either pull or build required images.

## What `act` supports

### Standard GitHub actions

`act` supports standard GitHub Actions available in GitHub or the Marketplace.

### Env Vars and Secrets

You can either pass to the cli, or define `.env` or `.secret` files to pass in.

```shell
cat .gitignore  | grep env
.env

cat .env
ENV_VAR_01=some-special-env-var
SECRET_01=secret-stuff-here-no-peeking
```

### Default Configuration

You can save configuration parameters to pass to act in a `.actrc` file

```shell
cat .actrc
--container-architecture linux/amd64
```

## What `act` doesn't easily support

* customer containers for jobs
* non-linux runners

## Secrets

* `act -s MY_SECRET=somevalue` : use `somevalue` as the value for `MY_SECRET`
* `act -s MY_SECRET` : check for environmental variable named `MY_SECRET` and use it if it exists
* `act --secret-file my.secrets` : load secret values from `my.secrets` file (same format as `.env` file)

## Demo

* `act` : run the entire pipeline
* `act -l` : list actions/jobs in the repo

## Run specific jobs

`act -j job_name`

## Run in dry mode

`act -n`
