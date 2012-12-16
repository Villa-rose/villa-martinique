This is the website for my mother's rental in Martinique.
Powered by [jekyll](http://jekyllrb.com/)

Setup
=====

Install
-------
Install [git](http://git-scm.org)

[Install jekyll](https://github.com/mojombo/jekyll/wiki/Install)

[Fork](https://help.github.com/articles/fork-a-repo) the repository

Copy `_config.yml.sample` to `_config.yml`. If you want you can specify your google analytics key

Pour lancer le terminal, taper terminal dans la loupe.
cd document/villa-martinique

To test your setup run `jekyll --server --auto` at the root of the project directory. The website should be available at http://localhost:4000/

Deploy to Amazon S3
---------
Install [s3cmd](http://s3tools.org/download)

Create a bucket and [use it as a website](http://docs.amazonwebservices.com/AmazonS3/latest/dev/WebsiteHosting.html)

Copy `deploy.sh.sample` to `deploy.sh` and setup your bucket name

Next time you want to deploy, just run `./deploy.sh`

Edit
====

All pages are listed in `src/`.
 Les photos sont déposées directement vers les pages. 
 chaque page a un numéro de priorité les + prio ont leur onglet à gauche. La partie homepage summary est reprise sur la page d'accueil.
 
 Le dossier -layouts contient les tructures communes à toutes les pages (anglaises et françaises).
 Les pages directement sous src contiennent le texte sans mise en page.
 
 pour sauvegarder les modifs dans GITHUB, il faut arrêter le server avec CTRL C. e sauvegarder avec git add -A
Required Front Matter Properties
--------------------------------
Pages begin with a [front matter](https://github.com/mojombo/jekyll/wiki/YAML-Front-Matter). It has to contain properties `lang`, `tabs_priority` and `title`

Homepage Snippets
-----------------
Pages whose front matter contains a `homepage_summary` will be added to its language homepage snippets. Snippets are displayed 3 in a row.

Localization
------------
Languages are listed in `_config.yaml`.

