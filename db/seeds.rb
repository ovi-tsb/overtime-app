@user = User.create(email: "test@test.com",
                    password: "asdfasdf", 
                    password_confirmation: "asdfasdf", 
                    first_name: "Jon", 
                    last_name: "Snow",
                    phone: "7052303440")

puts "1 User created"

AdminUser.create(email: "admin@yahoo.com", 
                 password: "123456", 
                 password_confirmation: "123456", 
                 first_name: "Admin", 
                 last_name: "Tom",
                 phone: "7052303440")

puts "1 Admin User created"

100.times do |post|
  Post.create!(date: Date.today, rationale: "#{post} rationale content", user_id: @user.id, overtime_request: 2.5)
end
puts "100 Posts have been created"

100.times do |audit_log|
  AuditLog.create!(user_id: @user.id, status: 0, start_date: (Date.today - 6.days))
end
puts "100 Audit logs have been created"