

ARTIFACT=$(echo $1 | awk -F / '{print $NF}')

curl -L \
    "https://api.github.com/repos/cr1tbit/antController-fw/actions/artifacts/$ARTIFACT/zip" \
    --header "Accept: application/vnd.github+json" \
    --header "Authorization: Bearer `cat .ght`" \
    --header "X-GitHub-Api-Version: 2022-11-28" \
     --output "/tmp/fw.zip"

unzip -ou /tmp/fw.zip -d ./fw