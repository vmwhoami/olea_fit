# implements JwtService class

class JwtService
  SECRET_KEY = Rails.application.credentials.secret_key_base || ENV['MY_SECRET_KEY']

  def self.encode(payload, exp = 24.hours.from_now)
    payload[:exp] = exp.to_i
    JWT.encode(payload, SECRET_KEY, 'HS256')
  end

  def self.decode(token)
    decoded = JWT.decode(token, SECRET_KEY, true, algorithm: 'HS256')[0]
    HashWithIndifferentAccess.new(decoded)
  rescue JWT::DecodeError, JWT::ExpiredSignature
    nil
  end
end
