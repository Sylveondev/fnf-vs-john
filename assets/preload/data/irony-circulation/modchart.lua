function update(elapsed)
	if distractions == 0 then return end
	local currentBeat = (songPos / 1000)*(bpm/60)
	for i=0,7 do
		setActorX(_G['defaultStrum'..i..'X'] + 64 * math.sin((currentBeat + i*0.5) * math.pi), i)
	end
	camHudAngle = 32 * math.sin((currentBeat * 0.5)*math.pi)
end