user_data = [
  {:first_name=>"Jimmy", :last_name=>"Wong", :username=> "jimmay",
     :occupation=>"Graphic Designer", :email=>"jimmy@gmail.com",
      :password=>"password", :password_confirmation=>"password"},
  {:first_name=>"Mikey", :last_name=>"Iseri", :username=> "mriseri",
     :occupation=>"UX Designer", :email=>"mikey@gmail.com",
      :password=>"password", :password_confirmation=>"password"},
  {:first_name=>"Darren", :last_name=>"Wong", :username=> "dran",
     :occupation=>"Web Developer", :email=>"darren@gmail.com",
      :password=>"password", :password_confirmation=>"password"},
  {:first_name=>"Alan", :last_name=>"Lee", :username=> "ablee",
     :occupation=>"Web Developer", :email=>"alan@gmail.com",
      :password=>"password", :password_confirmation=>"password"},
  {:first_name=>"Ben", :last_name=>"Tam", :username=> "lawl",
     :occupation=>"Retired", :email=>"ben@gmail.com",
      :password=>"password", :password_confirmation=>"password"},
  {:first_name=>"Joy", :last_name=>"Diaz", :username=> "boba",
     :occupation=>"Lawyer", :email=>"joy@gmail.com",
      :password=>"password", :password_confirmation=>"password"},
  {:first_name=>"Justin", :last_name=>"Wong", :username=> "jwong",
     :occupation=>"Buyer", :email=>"justin@gmail.com",
      :password=>"password", :password_confirmation=>"password"}
]

User.create(user_data)
