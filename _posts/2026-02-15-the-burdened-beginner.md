---
title: The Burdened Beginner
layout: post
tags:
- technical
- philosophy
---

The unoccupied hours of a swift January were spent in my den as I tinkered with new pieces of equipment to work on a budding idea. I was so close to making this my first technical post. But as I started to write, it became evident my subconscious had a different objective. Thus, I want to address the theme of this post and the lens through which I viewed most of January, inspired by my partner: that of the beginner. My title is just an initial and, as we'll see, mistaken interpretation of the idea. While engaging in my curiosities and learning to let go, I was taught how out of my element I was, and my patience has grown as a result. I am doing everything I want, and I am learning to embrace most of what that entails.

The month was spent building this:
<center>
	<video width="500" muted autoplay controls muted loop>
		<source src="{{'/assets/videos/firstPCBCase.mp4'|lfs_url}}" type="video/mp4" >
	</video>
</center>

It is exactly what it looks like. A box with alternating yellow and blue blinking LEDs. But for me, it represents a persistent engagement with aspects of time I didn't practice before. I hope that as I explain to you the skills I've developed, I'll evince the fear and struggle I've tried to overcome. This is a simple, boring project, but like most good stories, its complications are the highlights.
## Idea and Work

The germinating concept in my mind is a physical device. It should be a straightforward device, but the three big obstacles are:

- I've never built a physical device.
- I've never printed a circuit.
- I've never put together a circuit on anything beyond a breadboard.

So I set out to get a good grasp of the skills necessary to get it done, end to end. A builder has to build, after all. And I built the simplest task known to electronics: making an LED blink. But because I am ambitious, I made two LEDs blink in alternating fashion and a case for a more "finished" feel.

I'll walk you through the problems above for this project so you can grok just how many mistakes you can make while trying to make two LEDs blink.
### Printed Circuit Boards (PCBs)

The last time I connected wires to an NPN transistor in a piece of software was when I received a D, I think, in analog circuit design class my senior year of college. I was never particularly fond of worrying about my GPA for the GPA's sake, only whether the grade reflected my understanding of the subject.

The grade absolutely reflected my understanding, regardless of what the curve was.

Now that I had all the time in the world and the simplest circuit known to mankind, I thought maybe I could revisit at least the kind of software that enables construction of circuits, even if I didn't engage in the hard verification of the problems they are designed for.

Over the course of two days, I learned the ropes of KiCad, a free and open source (FOSS) printed circuit board (PCB) design suite. It was a cinch to set up and use, and I was pleasantly delighted at how quickly I could flow from schematic to the PCB layout.

The only serious question I had to answer was, what parts should I use for my circuit? Or, rather, that's a question I should have asked myself. I was connecting ridiculously simple components together. So simple, I assumed the default part that showed up in the selection list would work. When I rendered the board, it looked great.

So I ordered it to be shipped. In the modern age, printing boards is way simpler than it should be. OSH Park allowed me to print 3 boards for $5, no shipping fee. It's so cheap it feels irresponsible. 

In about nine days, I got this beautiful piece of work. Look at it:

![firstPCB]({{ '/assets/images/firstPCB.png' | lfs_url }}){:style="display: block; margin: auto" }
<center>
	<em>chr0nikler is my default online moniker</em>
</center>

Look at how wrong it is. Well, it's only wrong in two ways, but the mistakes are so amateur I cringe. For starters, I memorialized my first PCB with the wrong year. In a certain sense, it is a tremendously on-brand move. But the second and worse mistake is that all the holes are too small for my through-hole parts, making the board useless.

In the grand scheme of things, this is a $5 error. I reckoned with my mistakes, sat down, focused on some due diligence, found the right-sized parts in the KiCad library, double-checked my measurements, and ordered the parts once again. The fix took maybe 30 minutes of work.

Yet, the first feelings I had upon viewing my mistakes, before I could acknowledge how quickly they could be fixed, were ones of anger and shame. Anger that I made such trivial mistakes. Shame that this only reinforces why it is on-brand for me. More anger that I wasted a week and a half and would wait another nine days to get new boards. Feelings, not thoughts. Necessary feelings that make the learning worthwhile. Necessary for me. Not for you. Your brand of errors and learning will be different. But right now, these were aspects of my project that I predicted I would have to endure. Predicted because I have acknowledged these parts of me and am learning to navigate the feelings while doing the work, and because I have coached so many folks through their share of mistakes, trivial or costly, without those emotions, knowing full well that amongst the high achievers, they are already in effect.

This isn't the end of the thought, but it is a glimpse at how easily I force myself to work in spite of what I'm feeling.

After staring at a render that I was convinced was right and then patiently waiting another seven days, I finally verified that everything fit well on the new board.

![flow]({{ '/assets/images/fullPCBFLow.png' | lfs_url }}){:style="display: block; margin: auto" }
<center>
	<em>Top: Simple schematic in KiCAD. Middle: PCB layout and render. Bottom-left: received boards. Bottom-right: Verification</em>
</center>
### Soldering
It may sound dubious that an electrical engineer can graduate without doing any [soldering](https://en.wikipedia.org/wiki/Soldering), one of the most practical skills necessary for playing around with semi-permant circuits. I have two counter-arguments. First is my graduate book photo, which is the moment I realized that initialism degree lookup was not a standard practice.

![badSolder]({{ '/assets/images/graduatePhoto.jpg' | lfs_url }}){:style="display: block; margin: auto" }
<center>
	<em>CSE is Computer Science and Engineering, specifically Electrical Engineering. Imagine the self-denigration I experience every time I have to explain that next to my Berkeley EECS friends.</em>
</center>

My second counter, once the laughter dies down, is that I spent most of my time on the logic and digital side of electronics, not the hardware, as my analog circuit design grade demonstrated. There's more to this point that I will share in a moment, but for now, believe me when I say that it never came up in project work back in college. 

Since I had never done more than breadboard work, I let the overwhelming world of electronic part-buying put me in a chokehold for a while before I tapped out and came back to my senses. Back in the day your neighborhood RadioShack had everything you needed for hobby electronics. Unfortunately, it went out of business thanks to a poor gamble on how the cell phone market would evolve, amongst other problems. And with no Fry's Electronics or Circuit City, I was left with online shopping or making a trip to the newest holy grail of electronics in the Bay Area, MicroCenter. I summarily ordered three perfboards off DigiKey, along with some other essential parts, to practice this art form.

Then came the tools. Analysis paralysis is a place I never want to call home, but instead of confronting it in a calm and collected manner, I often go ham in the other way, acting without thinking at all. For shopping, this often means pulling the trigger on the first or second item I deem "good enough" for my task. In this instance, I went to Home Depot and bought whatever they had in store. The list, with bonus learned minor inconveniences, are:

- soldering iron with a dial that has no temperature marker, turning the exact science of heating non-leaded solder into an art form.
- helping hands tool that doesn't hold steady when I'm applying too much pressure.
- desolder sucker that requires precision and speed I cannot apply with my helping hands.

Put these all together in my first practice attempt, and this is the result:

![badSolder]({{ '/assets/images/BadSolder.jpg' | lfs_url }}){:style="display: block; margin: auto" }
<center>
	<em>I can smell the fumes from this horrid job.</em>
</center>

What you are seeing is my attempt to recover from the massacre that I let loose on this board. I cannot look at this photo without dredging up feelings of frustration and, again, anger. While trying to remove the components from the atrocity, I broke an LED's pin in half.

I've set the stage enough. The reasons I stay away from hardware projects are:

1. Hardware setup requires decent space and costs money.
2. Hardware mistakes are costly in time and sometimes money.
3. Hardware mistakes can be permanent.

None of these seriously apply to software, except the latter portion of #2 if you are churning through tokens with Claude Code because you are now an AI native developer. Between you and me, reason #1 is a rather lame excuse, so let's toss that out. #2 is the real meat. Like the PCB experience, my mistakes never stay mistakes. They stick around for a bit, snickering at how a man could have so much time and yet accomplish so little. What about #3? What do you know, we found ourselves another excuse too. Unless the hardware impacts your internal hardware (you hurt yourself, in case that joke didn't land), no mistake is permanent. They only take more time to fix or redo.

When I first wrote the list above, it dawned on me that even here, in my writing, in which I try to distill the truth, I cast lies. But I kept the list as a reminder to myself, and if it helps others, that personal essays are a process of distillation. That takes time, and if unpracticed, initial attempts at distillation will be murky and immature. As a self-proclaimed weak writer, I have leveled my expectations about how long it takes me to write and the level of my first draft, and I find the discovery process enjoyable. Other endeavors are not so lucky. A switch flips in my mind for goal-oriented outcomes. Mistakes are not lessons; they are time I have to recover. I cannot end on a mistake. The hardest thing I have ever done is set time aside for a project, make a mistake that jeopardizes my progress near the end of that time, and then leave the project where it is in a pleasant mood. There's a unique flavor of obsession that begins to make every other commitment or plan dissolve in my mind in the wake of this problem that now needs correcting. I have known since college that my best work is done concentrating on a hard problem and then, no matter the outcome, going to sleep and letting the mind wander. But the more costly the error, the harder it hits me.

This is one of the most abrupt transitions sentences you've ever read, but bear with me and witness my next attempt after watching a couple of videos, ordering some desolder wick, and improving my planning:

![goodSolder]({{ '/assets/images/GoodSolder.png' | lfs_url }}){:style="display: block; margin: auto" }
<center>
	<em>Bonus bottom picture of my work on an Adafruit IMU (Inertial Measurement Unit)</em>
</center>

The circuit worked first try.
### 3D Printing

Nothing says "I have difficulty with hardware projects" like deciding to engage in a simultaneous three-pronged attack on all the hardware in your project, so while making the above mistakes, I also bought this Ender 3 v2 off Facebook Marketplace for $100. A phenomenal deal considering the previous owner of this five-year-old printer had upgraded the firmware, installed new parts, and given it an overall tune-up.

This purchase was unfortunately sparked by frustration. My original plan was to rely on San Mateo County Libraries' wonderful 3D printing reservation system, and for a while, I made it work. There was a time in the past when I told myself that needing to wait two weeks for my two-hour reservation was good because it required me to plan ahead of time and practice patience. Except after about two months, when my patience reached its limit after the manager of the 3D printer at the beginning of my reservation told me that the printer uses an 0.8 mm nozzle instead of the default 0.4 mm nozzle. That's probably not a problem for most people, but I had double-checked their nozzle online to ensure it was 0.2 or 0.4 mm because my print was on the smaller side and needed a smaller nozzle to meet some of the tolerance demands. That reservation was pointless. It was also my last. Within two days, and after hearing my friend and my partner ask me why I hadn't bought a printer yet, I acquired this new toy.

Unlike the previous parts of my story, everything gets better now. Because I knew that, like my writing, working with 3D printing could be taxing, making accepting the challenges of this tool easy. It took time to figure out how to level the bed, how to get the right layer adhesion, and how to set up OrcaSlicer (another FOSS tool). All the while my filament is fighting for its life because the printer sits unfortunately close to a window that faces the water, thus continuously absorbing more moisture than it would like. I have since received multiple filament dryers, rectifying the problem. Then came a new set of challenges when I realized the previous owner had installed a 0.2 mm nozzle. If earlier I was complaining because the nozzle was too large, now my only complaint is that non-standard nozzle work meant immediately straying from default recommendations to figure out what worked.

The joy I felt when this unaesthetic but dimensionally accurate print came out was unparalleled:

![cube]({{ '/assets/images/cube.jpg' | lfs_url }}){:style="display: block; margin: auto" }

I then transitioned to learning FreeCAD, a FOSS CAD tool, to design a snap-enclosure case for my PCB. After struggling with supports for about a day,  and then fiddling with my tolerances to get the feel right, I got the case exactly the way I wanted.

![goodSolder]({{ '/assets/images/freeCADPrints.png' | lfs_url }}){:style="display: block; margin: auto" }
<center>
	<em>Top: FreeCAD design. Middle: Failures. Bottom: Working case, albeit poor layer integrity.</em>
</center>

After finishing up the case, it was time to do some serious benchmark testing. So I built 3DBenchy, the standard 3D Printing benchmark. Then I started a temperature tower to see what temperature my Ender V3 operates best at. And now I think the nozzle is clogged. I haven't fixed it yet. It's been over two weeks. I'm at peace with that.
## Fin
It goes without saying that I'm proud of the work I did in January. I designed and ordered a PCB, soldered the components on it, and 3D printed a case for it. All tasks I knew nothing about before the new year. To add to my unique flavor of joy, I employ a suite of FOSS tools to support these endeavors, which is never for the faint of heart. Decisions like supporting the free and open-source ecosystem, which can make development tougher, always have me questioning how much I want to stick to my principles versus achieving the goal. Do the ends justify the means? In this instance, I am very happy I did it without resorting to paid software, but we will see in the future what hurdles I face because of this setup.

In conjunction with what I have done, I am proud of how I navigated my internal narrative. It has been a long time since I have been a beginner in anything. Even when the activity was new, the skills involved were often not, so I would never, for lack of a better term, suck. Sucking is a refreshing behavior, and I'm fortunate to have the space and ability to do so. Make no mistake, this project would have been done regardless of the mindset, but it fills me with peace knowing that I still felt those feelings and am on the other side of the project a different person. There are times when your behaviors can, and should, stay the same even though the mindsets that enabled those behaviors are worlds apart.

I want to close out the topic on a thought I had difficulty reconciling in my head until now. For a long time, ever since I was young, I've always been told that I don't pay enough attention to the details. Told that enough times, and make enough mistakes that are never actually detrimental to living but are treated as life-altering, and you eventually ask yourself what's wrong with you. But I think a lot of big thoughts. And I'm not just a "big ideas" guy. Execution is my bread and butter. This whole project was about going from idea to execution. But heavens, the details, how could I possibly miss those? The layer lines of the 3D prints aren't great, and there's some unwanted webbing. The soldering is a little blobby. The date on my first PCB was wrong. Dotting the i's and crossing the t's—what laborious work. I've met phenomenal engineers, the ones that make you wonder what makes them tick. I know what true attention to detail looks like.

I'm not one of them.

And no, it's not that I don't care enough about the details. But I know where my ceiling and floor are. I know what my strengths and weaknesses are. The saddest advice a person can ever provide is a simple projection of his or her mind whisked with a dose of suggested character flaw.

Raise your ceiling. Break it again and again. Don't neglect your floor. Shore it up, tend to it. But if you focus on the opposite, you will be good at nothing; all you will be is average. If you are going to tackle new and different problems, find people in your corner who will cover for you. You will undoubtedly and even unknowingly cover for their shortcomings too.

For those who start new trajectories later in life, there will always be burdens that must be left behind in order to truly excel. In that sense, after a certain age, there are no unburdened beginners. All new skills are approached with the biases that shape our perspectives. Some biases you lean into, while others must be tamed.<sup>1</sup> On the other side of those questions is a stronger identity and greater sense of fulfillment. Once you know the feeling, then you will surely find joy in being the burdened beginner.

![mySpace]({{ '/assets/images/mySpace.jpg' | lfs_url }}){:style="display: block; margin: auto" }
<center>
	<em>Where the magic happens.</em>
</center>


<br />

---
1\. I was reminded of Miyamoto Musashi's Book of Five Rings as I wrote the conclusion. Musashi, a samurai and inventor of the "Two Heavens as One" sword style, mastered metallurgy, sculpting, calligraphy, and poetry without a teacher, all after becoming an expert swordsman. To him, they were all flavors of the philosophy he practiced, and deepening his mastery of one deepened his understanding of himself. Which, in hand, deepened his understanding of all things.
