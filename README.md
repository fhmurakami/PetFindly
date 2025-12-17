# PetFindly

PetFindly é uma plataforma desenvolvida em Ruby on Rails 8 que utiliza IA para ajudar a encontrar pets desaparecidos.
O sistema permite o cadastro de pets perdidos e encontrados, utilizando reconhecimento de imagens e geolocalização para sugerir correspondências entre registros.

---

## **Funcionalidades Principais**

1. **Cadastro de Pets:**

   - Donos podem registrar pets desaparecidos com foto, características (raça, cor, tamanho) e última localização conhecida.
   - Usuários que encontraram pets podem cadastrar animais com informações semelhantes.

2. **Reconhecimento de Similaridade de Imagem:**

   - IA identifica pets semelhantes entre fotos cadastradas, utilizando APIs como Google Vision AI.

3. **Busca Avançada:**

   - Permite pesquisar pets por características textuais (ex.: cor, raça) e localização geográfica.

4. **Geolocalização:**

   - Exibe no mapa onde o pet foi visto pela última vez ou encontrado.

5. **Notificações:**
   - Envia alertas automáticos para donos sobre novos registros de pets semelhantes.

---

---

## **Documentação Técnica**

Para detalhes sobre a Stack, Decisões Técnicas e Diagramas, consulte [ARCHITECTURE.md](ARCHITECTURE.md).

---

## **Como Rodar**

### **Pré-requisitos**

- **Ruby**: 3.4.0+
- **Rails**: 8.0+
- **Docker**: Necessário para rodar o Banco de Dados (PostgreSQL + PostGIS + PgVector).

### **Instalação**

1. Clone o repositório:
   ```bash
   git clone https://github.com/fhmurakami/PetFindly.git
   cd PetFindly
   ```

2. Instale as dependências do Ruby:
   ```bash
   bundle install
   ```

### **Configuração do Banco de Dados**

O projeto utiliza um arquivo `docker-compose.yml` customizado para prover o PostgreSQL com as extensões `postgis` e `pgvector`.

1. Suba o container do banco de dados:
   ```bash
   docker compose up -d
   ```

2. Prepare o banco (Criação e Migrações):
   ```bash
   rails db:prepare
   ```

### **Rodando a Aplicação**

Inicie o servidor de desenvolvimento (Rails + Tailwind + Solid Queue):

```bash
bin/dev
```

Acesse em: `http://localhost:3000`
