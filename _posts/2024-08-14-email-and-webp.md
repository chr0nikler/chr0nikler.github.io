---
title: 'WebP & Gmail: a Match Made in Hell'
layout: post
tags:
- technical
- software
---

When you send a newsletter with a splendid animated image that doubles up as sleek anime reference for the cultured amongst us, but still whose vibe everyone can connect to, and are excited for your readers to see how funny and creative you are, but realize your Gmail readers witnessed the worst focused frame of a man possible, you can't help but contemplate the cruelty of life.

Based on statistics, the majority of my readers used an iPhone to read [my previous post](https://www.joraaverchahal.com/blog/crosswords-and-completion). If they are true enjoyers of the ecosystem, they used Apple Mail to view it, and saw what I wanted them to see:

![aki_morning](https://chr0nikler.github.io/assets/images/aki_morning.gif){:style="display: block; margin: 0 auto" }

But the cows amongst us that graze upon emails in the sere (check it, vocabulary word learned via my crosswords) lands of Gmail saw this: 

![aki_morning](https://chr0nikler.github.io/assets/images/aki_morning.jpg){:style="display: block; margin: 0 auto" }
<center>
	<em> No offense to cows.<sup>1</sup></em>
</center>

What happened?

The file format used in my original post is WebP. Quoting [Google](https://developers.google.com/speed/webp#webp_support) for the definition: 

> WebP is a modern image format that provides superior lossless and lossy compression for images on the web. Using WebP, webmasters and web developers can create smaller, richer images that make the web faster.

You can use the link I just provided to read the details, but the main ideas are simple. The format uses predictive coding techniques to reduce the number of pixels stored. If I have a picture that is of mostly desert, you can visualize how much of the sand is the same color. The encoding makes use of this information to reduce reduntant information storage. It also only stores the difference as it moves between pixel blocks. There's more to it, but that is the gist.

As the source says, the WebP file is a third the size of the GIF I'm using now:

![aki_size](https://chr0nikler.github.io/assets/images/aki_size.png){:style="display: block; margin: 0 auto" }

But by golly would you look at the support statistics:

![webp_support](https://chr0nikler.github.io/assets/images/web_support.png){:style="display: block; margin: 0 auto" }
<center>
	<em>How to join the 2.38%</em>
</center>

How every other client can support the next-gen standard **except** the client of the company that produces the standard blows my mind.

To drill the point home, this is a screengrab from my client. You can see the frame was grabbed as a JPEG, despite the fetch url being WebP: 

![aki_crop](https://chr0nikler.github.io/assets/images/aki_crop.png){:style="display: block; margin: 0 auto" }

All this to say, screw me for using Gmail or a "next gen" format that was started in 2010. 

But at least I'm not [these saps](https://groups.google.com/a/webmproject.org/g/webp-discuss/c/e1ZzTJOfIyg?pli=1).

---

1\. I was trying to use koalas due their brain-to-weight ratio, but I couldn't formulate the analogy I wanted to portray, and while fact checking, ended up on [a post describing how some venture backed companies survive the way koalas, as stupid as they are, have managed to survive till now, despite their stupidity.](https://omdventures.com/essays/koalas-stupidity-as-strategy). Then I decided I was wasting my time. If a cow lover takes offense, I'd be more than happy to apologize.
