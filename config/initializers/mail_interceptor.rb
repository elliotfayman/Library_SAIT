options = { forward_emails_to: 'elliotfayman@gmail.com',
            deliver_emails_to: ["@wheel.com"] }

unless (Rails.env.test? || Rails.env.production?)
  interceptor = MailInterceptor::Interceptor.new(options)
  ActionMailer::Base.register_interceptor(interceptor)
end

MailInterceptor::Interceptor.new({ forward_emails_to: 'elliotfayman@gmail.com',
                                   only_intercept:  ["@bigbinary.com"] })
                              