sudo apt-get install jq
export API_URL_SSM="`aws ssm get-parameter --name /poja-sqlite/$1/api/url`"
export API_URL=`echo $API_URL_SSM | jq -r '.Parameter.Value'`
curl --fail "$API_URL$2"
AWS_REGION: eu-west-3
    AWS_DEFAULT_REGION: eu-west-3
    AWS_ACCESS_KEY_ID:AKIA2YY5SSOHHK4KZS5D
    AWS_SECRET_ACCESS_KEY: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 
