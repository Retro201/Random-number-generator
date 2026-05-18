Math.randomseed(os.time())

function clearscreen()
    os.execute("clear")
end
function sleep(n)
    os.execute("timeout /T" .. tonumber(n))
end

local low = 1

local high = 10

function startGame()
    print("type 'start' to begin")

    local choice = os.read()

    if choice == "start" then
        clearscreen()
        local number = Math.random(low, high)
        local typed = os.read()
        if typed == number then

            print("The number was correct. Returning...")
            sleep(2)
            clearscreen()
            startGame()
        end
    end
end