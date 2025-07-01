# Leton Backend (Rails 8 API)

This is the backend API service for the Leton financial dashboard MVP — part of the Leton partner technical evaluation. It is designed using Ruby on Rails 8 (API-only), PostgreSQL, and JSONAPI serialization.

## 📦 Features

- API endpoints for:
  - Estimates vs Actuals (Item Lines)
  - Cash Flow entries (inflow/outflow)
  - Summary totals of all financial entries
- Clean JSONAPI responses using `jsonapi-serializer`
- Structured for future scalability (real-time updates, AI, user accounts)
- Seeded with sample data for frontend development
- Rails 8 defaults using Solid Queue, Solid Cache (Redis-free)

---

## 🚀 Getting Started

### 1. Clone the repository

```bash
git clone https://github.com/your-username/leton_backend.git
cd leton_backend
```

### 2. Setup environment variables

Create a `.env` file:

```env
POSTGRES_USERNAME=your_postgres_user
POSTGRES_PASSWORD=your_postgres_password
```

> Don’t forget to install the `dotenv-rails` gem to support `.env`.

### 3. Install dependencies

```bash
bundle install
```

### 4. Create and seed the database

```bash
rails db:create db:migrate db:seed
```

---

## 🧪 API Endpoints

### ✅ Item Lines – Estimates vs Actuals

```http
GET /api/v1/item_lines
```

Returns:
- name, est/act cost & revenue
- `total_profit`
- `profit_percentage`

### ✅ Cash Flow Entries

```http
GET /api/v1/cash_flow_entries
```

Returns:
- amount
- date
- inflow/outflow indicator

### ✅ Summary Totals

```http
GET /api/v1/summary
```

Returns totals for:
- est/act cost
- est/act revenue

---

## 🧬 Data Model

### ItemLine

| Field           | Type     |
|----------------|----------|
| name           | string   |
| est_cost       | decimal  |
| act_cost       | decimal  |
| est_revenue    | decimal  |
| act_revenue    | decimal  |

### CashFlowEntry

| Field     | Type     |
|----------|----------|
| amount   | decimal  |
| direction| string (inflow/outflow) |
| date     | date     |

---

## 🔧 Development Setup

```bash
rails s
```

Server runs at: [http://localhost:3000](http://localhost:3000)

To test JSON responses, use:
- Browser
- Postman
- Curl

---

## 🧱 Project Structure

```
app/
  controllers/api/v1/
  models/
  serializers/
  channels/        # Future: ActionCable
config/routes.rb   # Namespaced under /api/v1
```

---

## 📈 Future Roadmap

- WebSocket updates via ActionCable (SolidCable)
- Project & SOP models
- AI-based insights
- OAuth / SME user accounts
- Docker deployment with Kamal

---

## 👨‍💻 Author

Built with ❤️ by Krenar Darlishta (Partner Technical Challenge – July 2025)
