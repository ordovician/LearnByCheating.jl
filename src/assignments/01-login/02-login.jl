#!/usr/bin/env julia

function load_login_passwords(filename)
    lines = readlines(filename)
    logins = Dict()

    for l in lines
        user, password = split(l, ':')
        logins[user] = password
    end
    
    logins
end

function login()
    login_passwords = load_login_passwords("passwords.txt")
    
    for i in 1:3
        print("Login: ")
        user = readline(stdin)

        if haskey(login_passwords, user)            
            print("Password: ")
            password = readline(stdin)
            
            correct_password = login_passwords[user]
            if password == correct_password
                println("Correct! You are now logged in")
                break
            else
                println("Wrong password, try again...")
            end            
        else
            println("There is no login account with name $user")
        end
    end
    
end

#login()