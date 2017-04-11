require 'carrierwave/storage/fog'

CarrierWave.configure do |config|
  config.enable_processing = true


  config.storage = :fog
  config.fog_public     = true


  config.fog_directory  = 'falconryproupload'


    config.fog_credentials = {
        provider:              'AWS',
        aws_access_key_id:     'AKIAI7EORNFH37PPBXWA',
        aws_secret_access_key: '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',
        region:                'eu-central-1'
    }

end
