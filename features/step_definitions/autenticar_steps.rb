Dado /^que no estoy autenticado$/ do
	visit "/users/sign_out"
end

Dado /^que los siguientes usuarios existen:$/ do |table|
	table.hashes.each do |info|
	 User.new(info).save!
	end
end

Dado /^que estoy autenticado como "([^"]*)"$/ do |username|
	usuario = User.find_by_username username
	Entonces %{voy a login}
	Y %{completo "Email" con "#{usuario.email}"}
	Y %{completo "Password" con "#{usuario.password}"}
	Y %{apreto "Sign in"}
end
