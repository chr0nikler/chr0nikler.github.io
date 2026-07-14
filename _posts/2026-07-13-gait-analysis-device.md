---
title: Gait Analysis Device
layout: log
---

Soldering becoming more efficient. One mistake per board, blobby body (too much solder) but not cold joint. Practice heat flow techniques: heat pad, apply solder, remove solder, leave pad. Remember tip hygiene after finishing (keep it tinned). 
But, maybe try [this](https://www.youtube.com/watch?v=vhzhHQ49hIc) next time??

Breadboard choice obviously made project bulky. Think about form factor a little more next time. Battery could have beend place alongside components or flattened in another angle. 

Case design is good though. Happy with comfort in designing snap lock lids. 

Architecture was immature. Need more experience in embedded design. Bluetooth, while cheaper, overcomplicated the code. Learned about BLE negotiation, default packet size, sensor polling frequency vs bluetooth connection event intervals and interval lengths. Spent many hours debugging truncated messages, multiple data points on the same timestep. 

Learned that a crystal needs to be on board to make sure board has understanding of time (what's a crystal, learn later).

Claude helpful in belting out bluetooth.
