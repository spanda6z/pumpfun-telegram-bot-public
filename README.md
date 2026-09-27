# Pump.fun Telegram Bot (Public)

Python single-file Telegram bot for trading Pump.fun tokens via [PumpPortal](https://pumpportal.fun).

## Features

- Paste mint \u2192 Buy / Sell buttons
- Commands: `/start` `/buy` `/sell` `/panic` `/positions` `/wallet` `/settings` `/history` `/invite`
- Paper trade mode (default)
- Referral links
- Activity channel broadcasts on buy/sell

## Quick start

```bash
pip install -r requirements.txt
cp .env.example .env
# fill TELEGRAM_BOT_TOKEN, TELEGRAM_ALLOWED_USER_IDS, WALLET_PRIVATE_KEY, SOLANA_RPC_URL
python single_file_bot.py
```

## Safety

This can spend real SOL. Keep `PAPER_TRADE=true` until you verify the full flow.

## License

MIT \u2014 use at your own risk.
