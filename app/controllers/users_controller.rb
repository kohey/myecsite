class UsersController < ApplicationController
  def savenew
    sql = "insert into users (name,email, created_at,updated_at) values(
        #{ActiveRecord::Base.connection.quote(user_params[:name])},
        #{ActiveRecord::Base.connection.quote(user_params[:email])},now(), now())"
    ActiveRecord::Base.connection.execute(sql)
    redirect_to action: 'index'
  end
end
