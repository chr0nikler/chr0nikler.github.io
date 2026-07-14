---
title: Gait Analysis Device Construction
---

#### Electronics

INSERT MODULE PHOTOS

Soldering becoming more efficient. One mistake per board, blobby body (too much solder) but not a cold joint. Practice heat flow techniques: heat pad, apply solder, remove solder, leave pad. Remember tip hygiene after finishing (keep it tinned). 
***todo*** maybe try [this](https://www.youtube.com/watch?v=vhzhHQ49hIc) next time?? Feels really easy, can toss out stupid Home Depot helping hands (utter trash).

INSERT BREADBOARD PHOTO

Board wiring is pretty. Lead core wire, cheap and simple. Fits case perfectly, useful for longer term breadboard projects.
#### Manufacturing

INSERT CASE PHOTOS (simple, new)

Battery choice obviously made project bulky. Was sleek with just breadboard. Think about form factor a little more next time. Battery could have been placed alongside components or flattened in another angle. 

INSERT CASE SLIDE

Case design is good though. Happy with comfort in designing snap lock lids.  However, tolerance can be detriment to solid fittings. Small leeway for breadboard to slide, can create unwanted jiggle. Shouldn't be a problem due to mounting direction.
#### Code

INSERT ARCH DIAGRAM

Architecture was immature. Need more experience in embedded design. Bluetooth, while cheaper, overcomplicated the code. Learned about BLE negotiation, default packet size, sensor polling frequency vs bluetooth connection event intervals and interval lengths. Spent many hours debugging truncated messages, multiple data points on the same timestep. Would say use SD card logging, but without timestamp on module, impossible to synchronize both IMU's. Read more about already solved problem.
***todo*** learn more about [RTOS](https://freertos.org/Documentation/01-FreeRTOS-quick-start/01-Beginners-guide/01-RTOS-fundamentals) for more complex task handling (e.g. BLE connection events are low priority compared to sensor task because we don't care the actual timing of the messages as long as they are in order).

Learned that a crystal needs to be on board to make sure board has understanding of time.
***todo*** understand how a crystal works on a board

Tried [devbbox](https://www.jetify.com/devbox). Very happy. Immature usecase, isolated environment, re-evaluate with larger project.
Easy to install and use. No hassle package installing. Easy to scale if desired. Will try to use more.

Claude helpful in belting out bluetooth logging app. Always prefer CLI tools when working with agents (arduino-cli, adb). Don't need to use them if manually figuring something out, but get more comfortable with all CLI tools to hasten partner debugging.
#### Gait

Strategy for attaching device was 80% thought through. Wanted attachment to specific sites. Used double sided neo gel tape to attach hypafix bandaid to case. Silicone is the gold standard, won't work with my simple PLA case. Hypafix is excellent for easy and secure skin attachment (esp. good on hair!!). Need to add more solid sports wrap in next test for full stability, clear motion artifact in both acceleration data and motion visualization. Low pass filter can smooth it out, but not without impacting actual signal (frequency aliasing). 

***todo*** full gait analysis when data is stable.

INSERT VIDEO AND DATA
