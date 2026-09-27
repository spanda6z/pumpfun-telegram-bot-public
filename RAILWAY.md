# Deploy to Railway

## 1. Push full bot source

Ensure `single_file_bot.py` is complete in this repo (or use the TypeScript bot in `spanda6z/pumpfun-telegram-bot`).

## 2. Create Railway project

1. Go to https://railway.app and sign in with GitHub
2. **New Project** → **Deploy from GitHub repo**
3. Select `spanda6z/pumpfun-telegram-bot-public` (or the private TypeScript repo)
4. Railway will detect the Dockerfile

## 3. Set environment variables

In Railway → your service → **Variables**, add:

| Variable | Example |
|----------|---------|
| `TELEGRAM_BOT_TOKEN` | from @BotFather |
| `TELEGRAM_ALLOWED_USER_IDS` | your Telegram user id |
| `WALLET_PRIVATE_KEY` | base58 secret |
| `SOLANA_RPC_URL` | Helius / QuickNode HTTPS URL |
| `PAPER_TRADE` | `true` (start here!) |
| `BUY_SIZE_SOL` | `0.5` |
| `SLIPPAGE_PCT` | `15` |
| `PRIORITY_FEE_SOL` | `0.0005` |
| `BOT_USERNAME` | bot username without @ |
| `ACTIVITY_CHANNEL_ID` | optional channel id |
| `BROADCAST_ENABLED` | `true` |

**Never** put secrets in the Git repo.

## 4. Deploy settings

- **Service type**: this is a **worker** (long-running bot), not a web HTTP service
- If Railway asks for a public domain, you can ignore it — the bot only needs outbound network to Telegram + Solana RPC
- Restart policy: on failure (already in `railway.toml`)

## 5. Deploy

Click **Deploy**. Watch logs:

```
Pump.fun Telegram Bot (single-file)
   Wallet : ...
   Mode   : PAPER
```

Then open Telegram and send `/start` to the bot.

## TypeScript bot (existing repo)

`spanda6z/pumpfun-telegram-bot` already has:

- `Dockerfile` (Node 20)
- `railway.toml` with `node dist/index.js`

Deploy that repo the same way; use its env vars from that project’s `.env.example` / docs.

## Troubleshooting

| Issue | Fix |
|-------|-----|
| Bot exits immediately | Missing `TELEGRAM_BOT_TOKEN` or `WALLET_PRIVATE_KEY` |
| Unauthorized in Telegram | Your user id not in `TELEGRAM_ALLOWED_USER_IDS` |
| RPC errors | Use a paid RPC (Helius/QuickNode), not public mainnet |
| Crash loop | Check logs; keep `PAPER_TRADE=true` until stable |
