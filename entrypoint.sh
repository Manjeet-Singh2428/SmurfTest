#!/bin/bash
set -e

# Check if INPUT_PATH is set and non-empty
if [ -n "${INPUT_PATH}" ]; then
  cd "${INPUT_PATH}" || exit 1
fi

# Execute the smurf command
exec "/usr/local/bin/smurf" "$@"



# #!/bin/bash
# set -e

# cd "${INPUT_PATH}" || exit 1

# exec "/usr/local/bin/smurf" "$@"
# # Log in to Docker Hub if credentials are provided
# if [ -n "$DOCKER_USERNAME" ] && [ -n "$DOCKER_PASSWORD" ]; then
#   echo "$DOCKER_PASSWORD" | docker login --username "$DOCKER_USERNAME" --password-stdin
#   echo "Logged into Docker Hub successfully."
# fi
# # Check if provider is AWS
# if [ "$PROVIDER" = "aws" ]; then
#   aws ecr get-login-password --region "$AWS_REGION" | docker login --username AWS --password-stdin "$AWS_ACCOUNT_ID.dkr.ecr.$AWS_REGION.amazonaws.com"
# fi

# # Log in to GitHub Container Registry if credentials are provided
# if [ -n "$GITHUB_USERNAME" ] && [ -n "$TOKEN" ]; then
#   echo "$TOKEN" | docker login ghcr.io -u "$GITHUB_USERNAME" --password-stdin
#   echo "Logged into GitHub Container Registry successfully."
# fi

# Execute the smurf application with provided commands
# exec "/usr/local/bin/smurf" "$@"