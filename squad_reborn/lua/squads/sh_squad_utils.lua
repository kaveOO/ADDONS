-- returns the degrees between (0,0) and pt (note: 0 degrees is 'east')
function angleOfPoint(pt)
    local x, y = pt.x, pt.y
    local radian = math.atan2(y, x)
    local angle = radian * 180 / math.pi

    if angle < 0 then
        angle = 360 + angle
    end

    return angle
end

-- returns the degrees between two points (note: 0 degrees is 'east')
function angleBetweenPoints(a, b)
    local x, y = b.x - a.x, b.y - a.y

    return angleOfPoint({
        x = x,
        y = y
    })
end
