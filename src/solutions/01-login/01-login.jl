#!/usr/bin/env julia

function login()
    println("Login:")
    user = readline(stdin)

    println("Password:")
    password = readline(stdin)

    if user == "Jeff"
        if password == "secret"
            println("Correct! You are now logged in")
        else
            println("Wrong password")
        end
    else
        println("There is no login account with name $user")
    end

    if user == "Alex"
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