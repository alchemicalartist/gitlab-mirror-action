# Mirror to GitLab Action

A GitHub Action that mirrors all commits to GitLab.

## Example workflow

This is an example of a pipeline that uses this action:

```workflow
name: Mirror

on: [push]

jobs:
  build:
    runs-on: ubuntu-latest
    steps:
    - uses: actions/checkout@v1
    - name: Mirror
      uses: AlchemicalArtist/gitlab-mirror-action@main
      with:
        args: "https://gitlab.com/<namespace>/<repository>"
      env:
        FORCE_PUSH: "false"
        GITLAB_HOSTNAME: "gitlab.com"
        GITLAB_USERNAME: "alchemicalartist"
        GITLAB_PASSWORD: ${{ secrets.GITLAB_PASSWORD }} // Generate here: https://gitlab.com/profile/personal_access_tokens
        GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }} // https://docs.github.com/en/actions/reference/authentication-in-a-workflow#about-the-github_token-secret
```

Be sure to define the `GITLAB_PASSWORD` secret in `https://github.com/<namespace>/<repository>/settings/secrets`
Before setup a token to use as `GITLAB_PASSWORD` here <https://gitlab.com/profile/personal_access_tokens>
The token must have `read_api`, `read_repository` & `write_repository` permissions in GitLab.
For granular permissions create seperate users and tokens in GitLab with restricted access.

If you're rewriting history in the primary repo (e.g by using `git rebase`), you'll need to force push. Set the `FORCE_PUSH` environment variable to `true` to enable this. This will overwrite history in the mirror as well, so be **careful with this** (just like any time you're using `git push --force`).
