class Api::V1::UsersController::UserSerializer
  def self.user_create_serializer(user)
    {
     data: {
       id: user.id.to_s,
       type: 'users',
       attributes: {
         email: user.email,
         api_key: user.api_key
       }
     }
   }
 end
end
