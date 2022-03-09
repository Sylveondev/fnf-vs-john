function update(elapsed)
	if distractions == 0 then return end
	local currentBeat = (songPos / 1000)*(bpm/60)
	if difficulty == 3 or difficulty == 4 then
		if currentBeat >= 0 and currentBeat <=68 then
			for i=0,7 do
				setActorX(_G['defaultStrum'..i..'X'] + 64 * math.sin((currentBeat + i*0.25) * math.pi), i)
			end
		end
		if currentBeat >= 78 then
			for i=0,7 do
				setActorX(_G['defaultStrum'..i..'X'] + 32 * math.sin((currentBeat + i*0.25) * math.pi), i)
				setActorY(_G['defaultStrum'..i..'Y'] + 256 * math.sin((currentBeat + i*0.25) * math.pi), i)
			end
		end
	end
	if difficulty == 2 then
		if currentBeat >= 0 and currentBeat <=68 then
			for i=0,7 do
				setActorX(_G['defaultStrum'..i..'X'] + 32 * math.sin((currentBeat + i*0.25) * math.pi), i)
			end
		end
		if currentBeat >= 78 then
			for i=0,7 do
				setActorX(_G['defaultStrum'..i..'X'] + 32 * math.sin((currentBeat + i*0.25) * math.pi), i)
				setActorY(_G['defaultStrum'..i..'Y'] + 128 * math.sin((currentBeat + i*0.25) * math.pi), i)
			end
		end
	end
	if difficulty == 1 then
		if currentBeat >= 0 and currentBeat <=68 then
			for i=0,7 do
				setActorX(_G['defaultStrum'..i..'X'] + 32 * math.sin((currentBeat + i*0.25) * math.pi), i)
			end
		end
		if currentBeat >= 78 then
			for i=0,7 do
				setActorX(_G['defaultStrum'..i..'X'] + 32 * math.sin((currentBeat + i*0.25) * math.pi), i)
				setActorY(_G['defaultStrum'..i..'Y'] + 64 * math.sin((currentBeat + i*0.25) * math.pi), i)
			end
		end
	end
	if difficulty == 0 then
		if currentBeat >= 0 and currentBeat <=68 then
			for i=0,7 do
				setActorX(_G['defaultStrum'..i..'X'] + 32 * math.sin((currentBeat + i*0.25) * math.pi), i)
			end
		end
		if currentBeat >= 78 then
			for i=0,7 do
				setActorX(_G['defaultStrum'..i..'X'] + 32 * math.sin((currentBeat + i*0.25) * math.pi), i)
				setActorY(_G['defaultStrum'..i..'Y'] + 32 * math.sin((currentBeat + i*0.25) * math.pi), i)
			end
		end
	end
end