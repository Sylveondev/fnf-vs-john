-- this gets called starts when the level loads.
function start(song) -- arguments, the song name
    
end

-- this gets called every frame
function update(elapsed) -- arguments, how long it took to complete a frame
	if distractions == 0 then return end
	local currentBeat = (songPos / 1000)*(bpm/60)
	if currentBeat == 35 then
		setHudZoom(8.1)
		setCamZoom(8)
		tweenHudZoom(0.7,0.2)
        tweenCamZoom(0.7,0.2)	
	end
	if currentBeat == 69 then
		setHudZoom(8.1)
		setCamZoom(8)
		tweenHudZoom(0.7,0.2)
        tweenCamZoom(0.7,0.2)	
	end
	if currentBeat > 69 and currentBeat < 101 then
		camHudAngle = 32 * math.sin((currentBeat)*math.pi)
		cameraAngle = 32 * math.sin((currentBeat)*math.pi)
	end
	if currentBeat == 101 then
		camHudAngle = 0
		cameraAngle = 0
	end
	
	if currentBeat == 203 then
		setHudZoom(8.1)
		setCamZoom(8)
		tweenHudZoom(0.7,0.2)
        tweenCamZoom(0.7,0.2)	
	end
	if currentBeat > 203 and currentBeat < 235 then
		camHudAngle = 32 * math.sin((currentBeat)*math.pi)
		cameraAngle = 32 * math.sin((currentBeat)*math.pi)
		for i=0,7 do
				setActorX(_G['defaultStrum'..i..'X'] + 32 * math.sin((currentBeat + i*0.25) * math.pi), i)
				setActorY(_G['defaultStrum'..i..'Y'] + 64 * math.sin((currentBeat + i*0.25) * math.pi), i)
			end
	end
	if currentBeat == 235 then
		camHudAngle = 0
		cameraAngle = 0
	end
    -- 
end

-- this gets called every beat
function beatHit(beat) -- arguments, the current beat of the song

end

-- this gets called every step
function stepHit(step) -- arguments, the current step of the song (4 steps are in a beat)

end