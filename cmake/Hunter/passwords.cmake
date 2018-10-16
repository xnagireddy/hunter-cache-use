hunter_upload_password(
    # REPO_OWNER + REPO = https://github.com/forexample/hunter-cache
    REPO_OWNER "xnagireddy"
    REPO "hunter-cache"

    # USERNAME = https://github.com/xagnot
    USERNAME "xagnot"

    # PASSWORD = GitHub token saved as a secure environment variable
    PASSWORD "$ENV{GITHUB_USER_PASSWORD}"
)
