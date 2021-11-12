local TheClassicRace = TheClassicRace

-- table helpers
TheClassicRace.table = {}

TheClassicRace.table.contains = function(list, value)
	for _, v in pairs(list) do
		if v == value then
			return true
		end
	end
	return false
end

TheClassicRace.table.filter = function(list, filterfn)
	local result = {}
	for k, v in ipairs(list) do
		if filterfn(v) then
			result[k] = v
		end
	end

	return result
end

TheClassicRace.table.reduce = function(t, fn, acc)
	for _, v in pairs(t) do
		if acc == nil then
			acc = v
		else
			acc = fn(v, acc)
		end
	end
	return acc
end

TheClassicRace.table.sum = function(t)
	return TheClassicRace.table.reduce(t, function(a, b) return a + b end)
end

TheClassicRace.table.cnt = function(t)
	return TheClassicRace.table.reduce(t, function(_, cnt) return cnt + 1 end, 0)
end

TheClassicRace.table.avg = function(t)
	return TheClassicRace.table.sum(t) / TheClassicRace.table.cnt(t)
end

TheClassicRace.table.min = function(t)
	return TheClassicRace.table.reduce(t, function(a, b) return a > b and b or a end)
end

TheClassicRace.table.max = function(t)
	return TheClassicRace.table.reduce(t, function(a, b) return a > b and a or b end)
end

TheClassicRace.table.cntsumminmax = function(t, valuefn)
	local cnt = 0
	local minn = nil
	local maxx = nil
	local sum = nil

	for _, v in pairs(t) do
		if valuefn ~= nil then
			v = valuefn(v)
		end

		cnt = cnt + 1

		if sum == nil then
			sum = v
		else
			sum = sum + v
		end

		if maxx == nil or v > maxx then
			maxx = v
		end
		if minn == nil or v < minn then
			minn = v
		end
	end

	return cnt, sum, minn, maxx
end