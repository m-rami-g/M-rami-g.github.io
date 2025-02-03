---
layout: default
title: Research
---
<div class="container mx-auto px-4 py-8">
  <h1 class="text-3xl font-bold text-dark mb-6">Research</h1>
  <div class="grid grid-cols-1 md:grid-cols-2 gap-6">
    {% for pub in site.data.publications %}
    <div class="bg-secondary p-4 rounded-lg shadow-md hover:shadow-lg transition-shadow duration-300">
      <h2 class="text-xl font-bold text-dark">{{ pub.title }}</h2>
      <p class="text-gray-700">{{ pub.journal }} ({{ pub.year }})</p>
      <a href="{{ pub.url }}" class="text-primary hover:underline">Read More</a>
    </div>
    {% endfor %}
  </div>
</div>
