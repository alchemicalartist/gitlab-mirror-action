FROM alpine:latest as build
RUN apk add --no-cache git
LABEL "com.github.actions.name"="Mirror to GitLab Action"
LABEL "com.github.actions.description"="Automate mirroring of git commits to GitLab"
LABEL "com.github.actions.icon"="git-commit"
LABEL "com.github.actions.color"="blue"
LABEL "repository"="https://github.com/AlchemicalArtist/gitlab-mirror-action"
LABEL "homepage"="https://github.com/AlchemicalArtist/gitlab-mirror-action"
LABEL "maintainer"="Chris Denton <chris@intuitivealchemy.studio>"
LABEL "org.opencontainers.image.description"="Automate mirroring of git commits to GitLab"
LABEL "org.opencontainers.image.title"="Mirror to GitLab Action"
LABEL "org.opencontainers.image.version"="latest"