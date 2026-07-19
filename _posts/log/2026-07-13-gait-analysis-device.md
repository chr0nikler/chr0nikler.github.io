---
title: Gait Analysis Device Construction
---

### Electronics

![breadboard and solder]({{ '/assets/images/breadboard_collage.jpg' | lfs_url }}){:style="display: block; width: 90%; margin: auto" }

Soldering becoming more efficient. One mistake per board, blobby body (too much solder) but not a cold joint. Practice heat flow techniques: heat pad, apply solder, remove solder, leave pad. Remember tip hygiene after finishing (keep it tinned). 

***todo*** maybe try [this](https://www.youtube.com/watch?v=vhzhHQ49hIc) next time?? Feels really easy, can toss out stupid Home Depot helping hands (utter trash).

Board wiring is pretty. Lead core wire, cheap and simple. Fits case perfectly, useful for longer term breadboard projects.
### Manufacturing

![case_comparison]({{ '/assets/images/case_comparison.jpg' | lfs_url }}){:style="display: block; width: 90%; margin: auto" }

Battery choice obviously made project bulky. Was sleek with just breadboard. Think about form factor a little more next time. Battery could have been placed alongside components or flattened in another angle. 

<iframe 
  width="315" 
  height="560" 
  src="https://www.youtube.com/embed/4V_YOxNY_RU" 
  title="YouTube video player" 
  frameborder="0" 
  allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
  allowfullscreen>
</iframe>{:style="display: block; width: 50%;  margin: auto" }

Case design is good though. Happy with comfort in designing snap lock lids.  However, tolerance can be detriment to solid fittings. Small leeway for breadboard to slide, can create unwanted jiggle. Shouldn't be a problem due to mounting direction.
### Code

![arch]({{ '/assets/images/arch.jpeg' | lfs_url }}){:style="display: block; width: 90%; margin: auto" }

Architecture was immature. Need more experience in embedded design. Bluetooth, while cheaper, overcomplicated the code. Learned about BLE negotiation, default packet size, sensor polling frequency vs bluetooth connection event intervals and event lengths. Spent many hours debugging truncated messages, multiple data points on the same timestamp. Would say use SD card logging, but without timestamp on module, impossible to synchronize both IMU's. 
 
***todo*** learn more about [RTOS](https://freertos.org/Documentation/01-FreeRTOS-quick-start/01-Beginners-guide/01-RTOS-fundamentals) for more complex task handling (e.g. BLE connection events are low priority compared to sensor task because we don't care the actual timing of the messages as long as they are in order).

Learned that a crystal needs to be on board to make sure board has understanding of time.

***todo*** understand how a crystal works on a board

Tried [devbox](https://www.jetify.com/devbox). Very happy. Immature usecase, isolated environment, re-evaluate with larger project.
Easy to install and use. No hassle package installing. Easy to scale if desired. Will try to use more.

Claude helpful in belting out bluetooth logging app. Always prefer CLI tools when working with agents (arduino-cli, adb). Don't need to use them if manually figuring something out, but get more comfortable with all CLI tools to hasten partner debugging.

### Gait

<iframe width="560" height="315" src="https://www.youtube.com/embed/LLhB6xzba-8?si=ZghC2jzJTXaO_2YF" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>{:style="display: block; width: 80%;  margin: auto" }

Strategy for attaching device was 80% thought through. Wanted attachment to specific sites. Used double sided neo gel tape to attach hypafix bandaid to case. Silicone is the gold standard, won't work with my simple PLA case. Hypafix is excellent for easy and secure skin attachment (esp. good on hair!!). Need to add more solid sports wrap in next test for full stability, clear motion artifact in both acceleration data and motion visualization. Low pass filter can smooth it out, but not without impacting actual signal (frequency aliasing). 

<iframe width="560" height="315" src="https://www.youtube.com/embed/kOTS39varwQ?si=RScIJWd8j5FOJ6-5" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; loop; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>{:style="display: block; width: 100%;  margin: auto" }

***todo*** full gait analysis when data is stable (if I can do it).
