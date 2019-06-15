require 'net/http'

module Api
    module V1
        class CriptoInfoController<ApplicationController
            def index
                criptoinfo = CriptoInfo.order('id')
                render json: {status:'200', message:'Successful request', data:criptoinfo}, status: :ok
            end

            def updatecriptoinfo
                # Defining API KEY to make the get request
                api_key = ENV["API_KEY"]
                
                # Building API Key
                uri = URI('https://sandbox-api.coinmarketcap.com/v1/cryptocurrency/listings/latest?start=1&limit=30&convert=USD&CMC_PRO_API_KEY=' + api_key)
                
                # Making GET request
                res = Net::HTTP::get(uri)


                if res
                    res_obj = JSON.parse(res)['data']
                    for curr in res_obj
                        api_id = curr['id'].to_i
                        
                        db_instance = CriptoInfo.find_by(api_id: api_id)
                        
                        if db_instance
                            db_instance.price = curr['quote']['USD']['price']
                            db_instance.last_updated = curr['last_updated']
                            db_instance.save
                            transaction = "UPDATED RECORD"
                        else
                            criptoinfo = CriptoInfo.new
                            criptoinfo.name = curr['name']
                            criptoinfo.symbol = curr['symbol']
                            criptoinfo.last_updated = curr['last_updated']
                            criptoinfo.price = curr['quote']['USD']['price']
                            criptoinfo.api_id = curr['id']
                            criptoinfo.save
                            transaction = "CREATED NEW RECORD"
                        end
                    end
                    render json: {messsage:"Database Sucessfully updated", status:transaction}, status: :ok
                else
                    render json: {messsage:"API not reachable"}, status: :ok
            end


                
            end
        end
    end
end
