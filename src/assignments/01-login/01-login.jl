#!/usr/bin/env julia

function login()
    print("Login: ")
    user = readline(stdin)

    print("Password: ")
    password = readline(stdin)

    if user == "Jeff"
        if password == "secret"
            println("Correct! You are now logged in")
        else
            println("Wrong password")
        end
    elseif user == "Alex"
        if password == "123many"
            println("Correct! You are now logged in")
        else
            println("Wrong password")
        end
    else
        println("There is no login account with name $user")
    end
end

login()