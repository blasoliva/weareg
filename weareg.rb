# Welcome to Sonic Pi v2.10

live_loop :weareg do
  msg = ['we', 'are', 'gcoop']
  use_synth :blade
  for m in msg
    play m.ord, pitch: -32, release: 2
    sleep 0.8
  end
end

live_loop :please do
  msg = ['please','come', 'and', 'take', 'us', 'there']
  use_synth :dull_bell
  for m in msg
    play m.ord, pitch: -24, release: 3
    sleep 1.8
  end
end

live_loop :coors do
  msg = ['-34.5968536', '-58.4324025,17']
  use_synth :chipnoise
  for m in msg
    play m.ord, pitch: 12
    sleep 4
  end
end

live_loop :kick do
  sample :bass_trance_c
  sample :bd_haus
  sleep 0.5
end

live_loop :snare do
  sync :kick
  sleep 1
  sample :elec_beep, beat_stretch: 0.2
  sleep 1
end

live_loop :hihat do
  sample :elec_blip
  sleep 0.4
end
