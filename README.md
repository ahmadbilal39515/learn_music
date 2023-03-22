# BOBCEKAY.COM READ.ME
## Start Project
1. gh repo clone Code-Fools/bobcekay
2. bundle install 
3. rails db:{drop,create,migrate,seed}
4.  rails s
5. Open new terminal
6. yarn build
7. yarn build:css --watch


## Dev Users
- user name - test@test.com
- password - Password1


# ENV Variable
1. Create a local_env.yml file in /config
2. add the below to your application.rb


    config.before_configuration do
        env_file = File.join(Rails.root, 'config', 'local_env.yml')
        if File.exist?(env_file)
            YAML.safe_load(File.open(env_file)).each do |key, value|
            ENV[key.to_s] = value
        end
    end
