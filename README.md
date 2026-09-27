# Pump.fun Telegram Bot (Public)

**Public repository** — open source Python Telegram bot for Pump.fun.

## Full bot source

Complete `single_file_bot.py` (referrals + channel broadcast):

**https://github.com/spanda6z/pumpfun-telegram-bot/blob/main/python/single_file_bot.py**

If that repo is still **private**, make it public:

1. Open https://github.com/spanda6z/pumpfun-telegram-bot  
2. **Settings** → **General** → **Danger Zone**  
3. **Change visibility** → **Make public**

Then:

```bash
git clone https://github.com/spanda6z/pumpfun-telegram-bot.git
cd pumpfun-telegram-bot/python
pip install -r requirements.txt
cp .env.example .env
# edit .env
python single_file_bot.py
```

## Features

- Paste mint → Buy / Sell buttons
- Paper trade mode (default)
- `/invite` referral links
- Activity channel posts on buy/sell
- Owner-only trading via `TELEGRAM_ALLOWED_USER_IDS`

## Env

See `.env.example` in this repo.

## Safety

Keep `PAPER_TRADE=true` until you verify the flow. Real SOL can be spent.
