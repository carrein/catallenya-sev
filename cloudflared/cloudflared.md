# Add cloudflare gpg key
```
sudo mkdir -p --mode=0755 /usr/share/keyrings
curl -fsSL https://pkg.cloudflare.com/cloudflare-main.gpg | sudo tee /usr/share/keyrings/cloudflare-main.gpg >/dev/null
```
# Add this repo to your apt repositories
```
echo 'deb [signed-by=/usr/share/keyrings/cloudflare-main.gpg] https://pkg.cloudflare.com/cloudflared jammy main' | sudo tee /etc/apt/sources.list.d/cloudflared.list
```
# Install cloudflared
```
sudo apt-get update && sudo apt-get install cloudflared
```
# Login to cloudflared tunnel
```
cloudflared tunnel login
```
# Generate credential file for target tunnel
```
cloudflared tunnel token --cred-file ./cloudflared/token.json catallenya-sev
```