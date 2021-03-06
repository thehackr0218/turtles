local functionTable = {}

function functionTable.minedown ()
    shell.run('./lib/minedown.lua')
end

function functionTable.stripmine ()
    shell.run('./lib/stripmine.lua')
end

while turtle.getFuelLevel() < 2000 do
    print('waiting for refuel, ',turtle.getFuelLevel(), ' out of 100')
    turtle.refuel(1)
end

print('am done')
while true do
    term.clear()
    print('enter command')

    local input = read()
    if functionTable[input] then
        functionTable[input]()
    else
        print("I don't know how to "..input.."!\n")
    end
end
