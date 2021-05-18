#Getting Subnet id info for all VPc's using aws cli

export AWS_ACCESS_KEY_ID=AKIAUL4VP7XZHAP2KKN6
export AWS_SECRECT_ACCESS_KEY=JrjJL9ViufylTjXzirqS2TqeiBGN4Hth+PAbqksO
export AWS_DEFAULT_REGION=us-east-1

we can save ^^ in .bashrc as env variables so that we can configure aws cli without using key,id's evrytime

for vpc in $(aws ec2 describe-vpcs |jq ".Vpcs[].VpcId" |tr -d '"')
do
echo "getting subbnet info for $vpc"
echo "=============="
aws ec2 describe-subnets --filters "Name=vpc-id,Values=$vpc"|jq ".Subnets[].SubnetId"
echo "=========="
done

GEtting vpc's infor by taking region as input
for region in $(aws ec2 describe-regions |jq ".Regions[].RegionName" |tr -d '"')
do
echo " Getting Vpc's info in regions $region"
aws ec2 describe-vpcs --region $region |jq ".Vpcs[].VpcId" |tr -d '"'
sleep 1
done