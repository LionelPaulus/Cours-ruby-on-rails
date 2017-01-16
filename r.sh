#Lancer en faisant "./r.sh" dans le terminal

#Reset de la BDD et relance les migrations
rake db:migrate:reset

#Vu que la BDD est vid, on relance les seeds
rake db:seed
