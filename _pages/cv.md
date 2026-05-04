---
layout: archive
title: "CV"
permalink: /cv/
author_profile: true
redirect_from:
  - /resume
---

{% include base_path %}

A PDF version of my CV is available [here](https://github.com/taheri-az/taheri-az/raw/main/CV.pdf).

Education
======

* Ph.D. in Robotics and Autonomous Systems, Northeastern University, ECE Department (in progress)
* M.S. in Computer Engineering, Northeastern University
* B.Sc., Sharif University of Technology

Research Interests
======

* Temporal logic-based task planning (LTL, scLTL)
* Autonomous robot navigation in unknown environments
* Decision-making under uncertainty
* Multi-agent systems and coordination

Publications
======

  <ul>{% for post in site.publications reversed %}
    {% include archive-single-cv.html %}
  {% endfor %}</ul>

Talks
======

  <ul>{% for post in site.talks reversed %}
    {% include archive-single-talk-cv.html %}
  {% endfor %}</ul>

Service
======

* Reviewer: IEEE CASE, ACC, AIAA SCITECH
