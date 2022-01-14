function update(elapsed)
	local currentBeat = (songPos / 1000)*(bpm/60)
	for i=0,7 do
		setActorX(_G['defaultStrum'..i..'X'] + 64 * math.sin((currentBeat + i*0.25) * math.pi), i)
		setActorY(_G['defaultStrum'..i..'Y'] + 64 * math.sin((currentBeat + i*0.25) * math.pi), i)
	end
end