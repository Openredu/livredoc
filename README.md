# LivreDOC

O livreDOC é uma API que utiliza a arquitetura REST que converte qualquer extensão aceita pelo LibreOffice/OpenOffice em pdf.

Feita com o foco de ser usada pelo [Openredu](https://github.com/Openredu/Openredu) como serviço que converte arquivos PowerPoint para PDF, possibilitando exibição em aulas do tipo "Apresentação"

* Ruby version
  - 2.4.0

* Dependências
  - Docker
  - docker-compose

* Deployment instructions
  - Alterar no arquivo .env a linha RAILS_ENV=development para RAILS_ENV=production
  - Executar no terminal:
  - docker-compose build
  - POSTGRES_PASSOWORD=postgres docker-compose up -d livredoc_db
  - docker-compose run livredoc rake db:setup
  - docker-compose up -d

* Stopping the application
  - docker-compose stop

* Putting it back up
  - docker-compose up (for seeing the logs and let it run on terminal)
  - docker-compose up -d (for detached mode, run in background)
