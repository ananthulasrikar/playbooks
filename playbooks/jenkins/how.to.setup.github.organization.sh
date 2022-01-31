https://github.com/settings/apps
- New Github app
- Name: jenkins-github
- Homepage URL: http://github.com/ananthulasrikar/
- Webhook URL: http://xxxxx/github-webhook/
- Enable SSL verification: (if needed)
- Repository permissions
    - Administration : Read-only
    - Checks : Read, Write
    - Contents : Read-only
    - Metadata : Read-only
    - Pull Requests : Read-only
    - Webhooks : Read, Write
    - Commit statuses : Read, Write
- Subcribe to events:
    - Enable 
        - Check run
        - Check suite
        - Pull Request
        - Push
        - Repository
- Where can this Github App be installed?
    - Only on this account



- Generate a private key
    - save xxx.pem
    - openssl pkcs8 -topk8 -inform PEM -outform PEM -in xxx.pem -out converted-xxx.pem -nocrypt

- Github Apps -> select "jenkins-github" ~> Install App ~> Install 
    ~> select "Only select repositories" ~> add "backstage" , "opsdocs" , etc. ~> Install



### Jenkins
- Dashboard ~> Credentials ~> System ~> Global Credentials ~> Github App
    ID : jenkins-github
    Description : This Github app is created for using Github Org job
    App ID: xxxxx
    Key : paste the converted-xxx.key here
    ~> Test connection (Expected output: Success, rate limit is 4999xx)
    
- Dashboard ~> New job ~> ananthulasrikar ~> Github Organization ~> OK
    - API endpoint : https://api.github.com/
    - Credentials : select github-app i.e. jenkins-github
    - Owner : ananthulasrikar

- new github org job type
    - Add ~> Filter by name (under repositories) ~> Include "backstage", "opsdocs" etc ~> Scan Organization
    - Project Recognizers : Jenkinsfile, Jenkinsfile-abc etc











