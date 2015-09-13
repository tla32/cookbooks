include_recipe 'aws'

aws_s3_file "/etc/viderian/conf/stv-project.properties" do
  bucket "viderian_backups"
  remote_path "artifacts/stv-project.properties"
  aws_access_key_id node[:custom_access_key]
  aws_secret_access_key node[:custom_secret_key]
end

aws_s3_file "/etc/viderian/conf/aws.credentials" do
  bucket "viderian_backups"
  remote_path "artifacts/aws.credentials"
  aws_access_key_id node[:custom_access_key]
  aws_secret_access_key node[:custom_secret_key]
end

aws_s3_file "/etc/viderian/conf/log4j.properties" do
  bucket "viderian_backups"
  remote_path "artifacts/log4j.properties"
  aws_access_key_id node[:custom_access_key]
  aws_secret_access_key node[:custom_secret_key]
end
