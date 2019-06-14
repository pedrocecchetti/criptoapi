module Api
    module V1
        class CriptoInfoController<ApplicationController
            def index
                critpoinfo = CriptoInfo.order('id')
                render json: {status:'Mandou bem', message:'Successful request', data:critpoinfo}, status: :ok
            end
        end
    end
end
