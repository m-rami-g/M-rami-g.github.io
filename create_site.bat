@echo off
REM =============================================================
REM This script creates a complete Jekyll website inspired by Gitfolio,
REM including dark minimalist styling and blog functionality.
REM The following files and directories will be created:
REM   Gemfile
REM   _config.yml
REM   _layouts\default.html
REM   _layouts\blog.html
REM   _includes\head.html
REM   _includes\header.html
REM   _includes\footer.html
REM   assets\css\main.css
REM   assets\js\main.js
REM   index.md
REM   about.md
REM   publications.md
REM   contact.md
REM   blog.json
REM   blog\my-first-blog\index.md
REM   deploy.sh (optional bash deployment script)
REM =============================================================

REM --- Create directories ---
echo Creating directories...
mkdir "_layouts" 2>nul
mkdir "_includes" 2>nul
mkdir "assets\css" 2>nul
mkdir "assets\js" 2>nul
mkdir "blog" 2>nul
mkdir "blog\my-first-blog" 2>nul

REM --- Create Gemfile ---
echo Creating Gemfile...
del Gemfile 2>nul
echo source "https://rubygems.org" > Gemfile
echo. >> Gemfile
echo gem "jekyll", "~> 4.2.0" >> Gemfile
echo gem "jekyll-feed" >> Gemfile

REM --- Create _config.yml ---
echo Creating _config.yml...
del _config.yml 2>nul
echo title: "Dr. Jane Doe - Portfolio ^& Blog" > _config.yml
echo description: "Personal website ^& blog for an early career academic. Showcasing research, publications, and creative projects in a dark minimalist style inspired by Gitfolio." >> _config.yml
echo baseurl: "" >> _config.yml
echo url: "https://yourusername.github.io" >> _config.yml
echo markdown: kramdown >> _config.yml
echo theme: minima >> _config.yml
echo dark_theme: true >> _config.yml
echo plugins: >> _config.yml
echo   - jekyll-feed >> _config.yml

REM --- Create _layouts\default.html ---
echo Creating _layouts\default.html...
del "_layouts\default.html" 2>nul
echo <!DOCTYPE html> > "_layouts\default.html"
echo <html lang="en"> >> "_layouts\default.html"
echo   <head> >> "_layouts\default.html"
echo     {^% include head.html ^%} >> "_layouts\default.html"
echo   </head> >> "_layouts\default.html"
echo   <body class="dark-mode"> >> "_layouts\default.html"
echo     {^% include header.html ^%} >> "_layouts\default.html"
echo     <main> >> "_layouts\default.html"
echo       {{ content }} >> "_layouts\default.html"
echo     </main> >> "_layouts\default.html"
echo     {^% include footer.html ^%} >> "_layouts\default.html"
echo     <script src="{{ '/assets/js/main.js' | relative_url }}"> </script> >> "_layouts\default.html"
echo   </body> >> "_layouts\default.html"
echo </html> >> "_layouts\default.html"

REM --- Create _layouts\blog.html ---
echo Creating _layouts\blog.html...
del "_layouts\blog.html" 2>nul
echo <!DOCTYPE html> > "_layouts\blog.html"
echo <html lang="en"> >> "_layouts\blog.html"
echo   <head> >> "_layouts\blog.html"
echo     {^% include head.html ^%} >> "_layouts\blog.html"
echo     <title>{{ page.title }} - Blog</title> >> "_layouts\blog.html"
echo   </head> >> "_layouts\blog.html"
echo   <body class="dark-mode"> >> "_layouts\blog.html"
echo     {^% include header.html ^%} >> "_layouts\blog.html"
echo     <main class="blog-post"> >> "_layouts\blog.html"
echo       <article> >> "_layouts\blog.html"
echo         <h1>{{ page.title }}</h1> >> "_layouts\blog.html"
echo         <p class="blog-date">{{ page.date ^| date: "%%B %%d, %%Y" }}</p> >> "_layouts\blog.html"
echo         {{ content }} >> "_layouts\blog.html"
echo       </article> >> "_layouts\blog.html"
echo     </main> >> "_layouts\blog.html"
echo     {^% include footer.html ^%} >> "_layouts\blog.html"
echo     <script src="{{ '/assets/js/main.js' | relative_url }}"> </script> >> "_layouts\blog.html"
echo   </body> >> "_layouts\blog.html"
echo </html> >> "_layouts\blog.html"

REM --- Create _includes\head.html ---
echo Creating _includes\head.html...
del "_includes\head.html" 2>nul
echo <meta charset="UTF-8"> > "_includes\head.html"
echo <meta name="viewport" content="width=device-width, initial-scale=1"> >> "_includes\head.html"
echo <title>{{ page.title ^| default: site.title }}</title> >> "_includes\head.html"
echo <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;600&display=swap" rel="stylesheet"> >> "_includes\head.html"
echo <link rel="stylesheet" href="{{ '/assets/css/main.css' | relative_url }}"> >> "_includes\head.html"
echo <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"> >> "_includes\head.html"

REM --- Create _includes\header.html ---
echo Creating _includes\header.html...
del "_includes\header.html" 2>nul
echo <header class="site-header"> > "_includes\header.html"
echo   <div class="container"> >> "_includes\header.html"
echo     <h1 class="site-title"><a href="{{ '/' | relative_url }}">Dr. Jane Doe</a></h1> >> "_includes\header.html"
echo     <p class="tagline">Portfolio ^&amp; Blog</p> >> "_includes\header.html"
echo     <nav class="site-nav"> >> "_includes\header.html"
echo       <ul> >> "_includes\header.html"
echo         <li><a href="{{ '/' | relative_url }}">Home</a></li> >> "_includes\header.html"
echo         <li><a href="{{ '/about' | relative_url }}">About</a></li> >> "_includes\header.html"
echo         <li><a href="{{ '/publications' | relative_url }}">Publications</a></li> >> "_includes\header.html"
echo         <li><a href="{{ '/contact' | relative_url }}">Contact</a></li> >> "_includes\header.html"
echo         <li><a href="{{ '/blog' | relative_url }}">Blog</a></li> >> "_includes\header.html"
echo       </ul> >> "_includes\header.html"
echo     </nav> >> "_includes\header.html"
echo   </div> >> "_includes\header.html"
echo </header> >> "_includes\header.html"

REM --- Create _includes\footer.html ---
echo Creating _includes\footer.html...
del "_includes\footer.html" 2>nul
echo <footer class="site-footer"> > "_includes\footer.html"
echo   <div class="container"> >> "_includes\footer.html"
echo     <p>&copy; {{ site.time ^| date: "%%Y" }} Dr. Jane Doe. All rights reserved.</p> >> "_includes\footer.html"
echo   </div> >> "_includes\footer.html"
echo </footer> >> "_includes\footer.html"

REM --- Create assets\css\main.css ---
echo Creating assets\css\main.css...
del "assets\css\main.css" 2>nul
echo /* main.css - Dark minimalist style inspired by Gitfolio */ > "assets\css\main.css"
echo. >> "assets\css\main.css"
echo /* Reset & Base */ >> "assets\css\main.css"
echo * { margin: 0; padding: 0; box-sizing: border-box; } >> "assets\css\main.css"
echo body { >> "assets\css\main.css"
echo     font-family: 'Montserrat', sans-serif; >> "assets\css\main.css"
echo     line-height: 1.6; >> "assets\css\main.css"
echo     background-color: #121212; >> "assets\css\main.css"
echo     color: #e0e0e0; >> "assets\css\main.css"
echo } >> "assets\css\main.css"
echo .container { >> "assets\css\main.css"
echo     width: 90%%; >> "assets\css\main.css"
echo     max-width: 960px; >> "assets\css\main.css"
echo     margin: 0 auto; >> "assets\css\main.css"
echo     padding: 1rem; >> "assets\css\main.css"
echo } >> "assets\css\main.css"
echo. >> "assets\css\main.css"
echo /* Header */ >> "assets\css\main.css"
echo .site-header { >> "assets\css\main.css"
echo     background: #1e1e1e; >> "assets\css\main.css"
echo     padding: 2rem 0; >> "assets\css\main.css"
echo     border-bottom: 1px solid #333; >> "assets\css\main.css"
echo     text-align: center; >> "assets\css\main.css"
echo } >> "assets\css\main.css"
echo .site-title a { >> "assets\css\main.css"
echo     color: #f0f0f0; >> "assets\css\main.css"
echo     text-decoration: none; >> "assets\css\main.css"
echo     font-size: 2.8rem; >> "assets\css\main.css"
echo     font-weight: 600; >> "assets\css\main.css"
echo     transition: color 0.3s ease; >> "assets\css\main.css"
echo } >> "assets\css\main.css"
echo .site-title a:hover { color: #f0a500; } >> "assets\css\main.css"
echo .tagline { font-size: 1.2rem; margin-top: 0.5rem; color: #b0b0b0; } >> "assets\css\main.css"
echo .site-nav { margin-top: 1.5rem; } >> "assets\css\main.css"
echo .site-nav ul { >> "assets\css\main.css"
echo     list-style: none; >> "assets\css\main.css"
echo     display: flex; >> "assets\css\main.css"
echo     justify-content: center; >> "assets\css\main.css"
echo     gap: 2rem; >> "assets\css\main.css"
echo } >> "assets\css\main.css"
echo .site-nav a { >> "assets\css\main.css"
echo     text-decoration: none; >> "assets\css\main.css"
echo     color: #e0e0e0; >> "assets\css\main.css"
echo     font-weight: 500; >> "assets\css\main.css"
echo     letter-spacing: 0.5px; >> "assets\css\main.css"
echo     transition: color 0.3s ease, border-bottom 0.3s ease; >> "assets\css\main.css"
echo     padding-bottom: 0.25rem; >> "assets\css\main.css"
echo     border-bottom: 2px solid transparent; >> "assets\css\main.css"
echo } >> "assets\css\main.css"
echo .site-nav a:hover { >> "assets\css\main.css"
echo     color: #f0a500; >> "assets\css\main.css"
echo     border-bottom: 2px solid #f0a500; >> "assets\css\main.css"
echo } >> "assets\css\main.css"
echo. >> "assets\css\main.css"
echo /* Main Content */ >> "assets\css\main.css"
echo main { padding: 3rem 0; } >> "assets\css\main.css"
echo section { margin-bottom: 3rem; } >> "assets\css\main.css"
echo section h2, section h3 { >> "assets\css\main.css"
echo     font-weight: 600; >> "assets\css\main.css"
echo     margin-bottom: 1rem; >> "assets\css\main.css"
echo     color: #f0f0f0; >> "assets\css\main.css"
echo } >> "assets\css\main.css"
echo section p { font-size: 1rem; color: #d0d0d0; } >> "assets\css\main.css"
echo. >> "assets\css\main.css"
echo /* Publications */ >> "assets\css\main.css"
echo .publications ul { list-style: none; padding-left: 0; } >> "assets\css\main.css"
echo .publications li { >> "assets\css\main.css"
echo     margin-bottom: 1rem; >> "assets\css\main.css"
echo     border-bottom: 1px solid #333; >> "assets\css\main.css"
echo     padding-bottom: 0.5rem; >> "assets\css\main.css"
echo } >> "assets\css\main.css"
echo .publications li a { >> "assets\css\main.css"
echo     color: #f0a500; >> "assets\css\main.css"
echo     text-decoration: none; >> "assets\css\main.css"
echo     transition: color 0.3s ease; >> "assets\css\main.css"
echo } >> "assets\css\main.css"
echo .publications li a:hover { color: #ffcb70; } >> "assets\css\main.css"
echo. >> "assets\css\main.css"
echo /* Footer */ >> "assets\css\main.css"
echo .site-footer { >> "assets\css\main.css"
echo     background: #1e1e1e; >> "assets\css\main.css"
echo     padding: 1.5rem 0; >> "assets\css\main.css"
echo     border-top: 1px solid #333; >> "assets\css\main.css"
echo     text-align: center; >> "assets\css\main.css"
echo     font-size: 0.9rem; >> "assets\css\main.css"
echo     color: #b0b0b0; >> "assets\css\main.css"
echo     margin-top: 3rem; >> "assets\css\main.css"
echo } >> "assets\css\main.css"
echo. >> "assets\css\main.css"
echo /* Animations */ >> "assets\css\main.css"
echo .animate-on-scroll { opacity: 0; transform: translateY(20px); } >> "assets\css\main.css"
echo .fade-in { animation: fadeIn 1.5s forwards ease-in-out; } >> "assets\css\main.css"
echo @keyframes fadeIn { >> "assets\css\main.css"
echo     to { opacity: 1; transform: translateY(0); } >> "assets\css\main.css"
echo } >> "assets\css\main.css"
echo. >> "assets\css\main.css"
echo /* Responsive */ >> "assets\css\main.css"
echo @media (max-width: 600px) { >> "assets\css\main.css"
echo     .site-nav ul { flex-direction: column; gap: 1rem; } >> "assets\css\main.css"
echo     .site-title a { font-size: 2.2rem; } >> "assets\css\main.css"
echo } >> "assets\css\main.css"

REM --- Create assets\js\main.js ---
echo Creating assets\js\main.js...
del "assets\js\main.js" 2>nul
echo /* main.js - Animate on scroll */ > "assets\js\main.js"
echo document.addEventListener("DOMContentLoaded", function() { >> "assets\js\main.js"
echo     const animatedElements = document.querySelectorAll('.animate-on-scroll'); >> "assets\js\main.js"
echo     function animateOnScroll() { >> "assets\js\main.js"
echo         const windowHeight = window.innerHeight; >> "assets\js\main.js"
echo         animatedElements.forEach(el => { >> "assets\js\main.js"
echo             const rect = el.getBoundingClientRect(); >> "assets\js\main.js"
echo             if (rect.top < windowHeight - 50) { >> "assets\js\main.js"
echo                 el.classList.add('fade-in'); >> "assets\js\main.js"
echo             } >> "assets\js\main.js"
echo         }); >> "assets\js\main.js"
echo     } >> "assets\js\main.js"
echo     window.addEventListener('scroll', animateOnScroll); >> "assets\js\main.js"
echo     animateOnScroll(); >> "assets\js\main.js"
echo }); >> "assets\js\main.js"

REM --- Create index.md ---
echo Creating index.md...
del index.md 2>nul
echo --- > index.md
echo layout: default >> index.md
echo title: Home >> index.md
echo --- >> index.md
echo. >> index.md
echo <section class="hero animate-on-scroll"> >> index.md
echo   <div class="container"> >> index.md
echo     <h2>Welcome to My Personal Website</h2> >> index.md
echo     <p>A portfolio ^&amp; blog inspired by Gitfolio. Explore my research, publications, and creative projects.</p> >> index.md
echo   </div> >> index.md
echo </section> >> index.md
echo. >> index.md
echo <section class="introduction animate-on-scroll"> >> index.md
echo   <div class="container"> >> index.md
echo     <h3>About Me</h3> >> index.md
echo     <p>Hello, I'm Dr. Jane Doe – an early career academic passionate about innovative research and creative expression. My work bridges theory and practice in [Your Field].</p> >> index.md
echo   </div> >> index.md
echo </section> >> index.md

REM --- Create about.md ---
echo Creating about.md...
del about.md 2>nul
echo --- > about.md
echo layout: default >> about.md
echo title: About >> about.md
echo permalink: /about/ >> about.md
echo --- >> about.md
echo. >> about.md
echo <section class="about animate-on-scroll"> >> about.md
echo   <div class="container"> >> about.md
echo     <h2>About Me</h2> >> about.md
echo     <p>[Provide a detailed description of your academic background, research interests, teaching experience, and professional journey here.]</p> >> about.md
echo   </div> >> about.md
echo </section> >> about.md

REM --- Create publications.md ---
echo Creating publications.md...
del publications.md 2>nul
echo --- > publications.md
echo layout: default >> publications.md
echo title: Publications >> publications.md
echo permalink: /publications/ >> publications.md
echo --- >> publications.md
echo. >> publications.md
echo <section class="publications animate-on-scroll"> >> publications.md
echo   <div class="container"> >> publications.md
echo     <h2>Publications ^&amp; Projects</h2> >> publications.md
echo     <ul> >> publications.md
echo       <li><strong>Research Paper Title 1</strong> – Journal/Conference (Year). <a href="#">View details</a></li> >> publications.md
echo       <li><strong>Project Title 2</strong> – A brief description with <a href="#">link</a> for more info.</li> >> publications.md
echo       REM Add more items as needed >> publications.md
echo     </ul> >> publications.md
echo   </div> >> publications.md
echo </section> >> publications.md

REM --- Create contact.md ---
echo Creating contact.md...
del contact.md 2>nul
echo --- > contact.md
echo layout: default >> contact.md
echo title: Contact >> contact.md
echo permalink: /contact/ >> contact.md
echo --- >> contact.md
echo. >> contact.md
echo <section class="contact animate-on-scroll"> >> contact.md
echo   <div class="container"> >> contact.md
echo     <h2>Get in Touch</h2> >> contact.md
echo     <p>Feel free to contact me for collaborations, research inquiries, or any questions.</p> >> contact.md
echo     <ul> >> contact.md
echo       <li>Email: <a href="mailto:your.email@example.com">your.email@example.com</a></li> >> contact.md
echo       <li>Twitter: <a href="https://twitter.com/yourhandle" target="_blank">@yourhandle</a></li> >> contact.md
echo       REM Add other social links if desired >> contact.md
echo     </ul> >> contact.md
echo   </div> >> contact.md
echo </section> >> contact.md

REM --- Create blog.json ---
echo Creating blog.json...
del blog.json 2>nul
echo [ > blog.json
echo   { >> blog.json
echo     "url_title": "my-first-blog", >> blog.json
echo     "title": "My First Blog", >> blog.json
echo     "sub_title": "Welcome to my blog post. This is a sample blog post.", >> blog.json
echo     "top_image": "https://images.unsplash.com/photo-1553748024-d1b27fb3f960?w=1450", >> blog.json
echo     "visible": true >> blog.json
echo   } >> blog.json
echo ] >> blog.json

REM --- Create sample blog post ---
echo Creating blog\my-first-blog\index.md...
del "blog\my-first-blog\index.md" 2>nul
echo --- > "blog\my-first-blog\index.md"
echo layout: blog >> "blog\my-first-blog\index.md"
echo title: "My First Blog" >> "blog\my-first-blog\index.md"
echo date: 2025-02-04 >> "blog\my-first-blog\index.md"
echo --- >> "blog\my-first-blog\index.md"
echo. >> "blog\my-first-blog\index.md"
echo Welcome to my first blog post! >> "blog\my-first-blog\index.md"
echo. >> "blog\my-first-blog\index.md"
echo This is a sample post inspired by Gitfolio. Customize this content to share your ideas, research updates, or creative projects. >> "blog\my-first-blog\index.md"

REM --- Create deploy.sh (optional) ---
echo Creating deploy.sh...
del deploy.sh 2>nul
echo #!/bin/bash > deploy.sh
echo "# deploy.sh - Builds the Jekyll site and deploys to GitHub Pages" >> deploy.sh
echo set -e >> deploy.sh
echo. >> deploy.sh
echo "# Ensure on 'main' branch and clean working tree" >> deploy.sh
echo current_branch=$(git rev-parse --abbrev-ref HEAD) >> deploy.sh
echo if [ "$current_branch" != "main" ]; then >> deploy.sh
echo   echo "Error: Switch to the main branch." >> deploy.sh
echo   exit 1 >> deploy.sh
echo fi >> deploy.sh
echo if ! git diff-index --quiet HEAD --; then >> deploy.sh
echo   echo "Error: Commit or stash changes before deploying." >> deploy.sh
echo   exit 1 >> deploy.sh
echo fi >> deploy.sh
echo. >> deploy.sh
echo echo "Installing dependencies..." >> deploy.sh
echo bundle install >> deploy.sh
echo. >> deploy.sh
echo echo "Building the site..." >> deploy.sh
echo BUILD_DIR="temp_build" >> deploy.sh
echo bundle exec jekyll build --destination "$BUILD_DIR" >> deploy.sh
echo. >> deploy.sh
echo echo "Replacing old site files..." >> deploy.sh
echo "preserve_list=(.git _config.yml Gemfile deploy.sh blog.json)" >> deploy.sh
echo "for file in *; do" >> deploy.sh
echo "  skip=0" >> deploy.sh
echo "  for keep in ${preserve_list[@]}; do" >> deploy.sh
echo "    if [ "$file" = "$keep" ]; then" >> deploy.sh
echo "      skip=1" >> deploy.sh
echo "      break" >> deploy.sh
echo "    fi" >> deploy.sh
echo "  done" >> deploy.sh
echo "  if [ $skip -eq 0 ]; then" >> deploy.sh
echo "    rm -rf "$file"" >> deploy.sh
echo "  fi" >> deploy.sh
echo "done" >> deploy.sh
echo. >> deploy.sh
echo echo "Deploying new files..." >> deploy.sh
echo shopt -s dotglob >> deploy.sh
echo mv "$BUILD_DIR"/* . >> deploy.sh
echo rm -rf "$BUILD_DIR" >> deploy.sh
echo shopt -u dotglob >> deploy.sh
echo. >> deploy.sh
echo echo "Staging changes..." >> deploy.sh
echo git add . >> deploy.sh
echo commit_message=${1:-"Deploy update: $(date +'%Y-%m-%d %H:%M:%S')"} >> deploy.sh
echo git commit -m "$commit_message" >> deploy.sh
echo. >> deploy.sh
echo echo "Pushing to GitHub..." >> deploy.sh
echo git push origin main >> deploy.sh
echo echo "Deployment complete!" >> deploy.sh

REM --- Inform about deploy.sh permissions ---
echo.
echo To make deploy.sh executable in Git Bash, run: chmod +x deploy.sh
echo All files and folders have been created successfully.
pause