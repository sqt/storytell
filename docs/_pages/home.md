---
title: "Next Event"
layout: next-event
permalink: /
hidden: true
---

{% assign next_event = site.events | where: "event_id", site.next_event | first %}
{% if next_event %}
{% include event-teaser.html event=next_event %}
{% include storytell-intro.html %}
{% include event-details.html event=next_event %}
{{ next_event.content | markdownify }}
<h2>Can you tell a story?</h2>
<p>We're looking for true stories from your own life, loosely connected to the theme. Funny, surprising, moving, or quietly memorable: there's room for all of them.</p>
<p>You don't need stage experience or a polished draft to get started. If a memory comes to mind, send us a few sentences by text or WhatsApp. We'll meet with each storyteller before the evening to explore their idea and help shape it for Storytell. After that, we can offer more feedback as needed. You'll practise telling your story so you're ready to share it without notes on the night.</p>
<p><a href="{{ "/storytellers/" | relative_url }}">Find out more about telling a story.</a></p>
<p><a href="{{ next_event.url | relative_url }}">View the event page.</a></p>
{% else %}
<p>Details of the next event will be announced here.</p>
{% endif %}
