if User.find_by_email("admin@admin.com").nil?
  User.create!(email:"admin@admin.com", password:"aaabbb", name:"관리자", phone:"010-9999-9999", birthday: Time.now) 
end