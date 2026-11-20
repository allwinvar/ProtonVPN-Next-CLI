# Quick Start

## Requirements
- Linux (kernel 5.6+ with WireGuard)
- Root/sudo access

## One-liner install + connect

```bash
curl -sL https://raw.githubusercontent.com/allwinvar/ProtonVPN-Next-CLI/master/install.sh | bash
```

## Manual

```bash
curl -LO https://github.com/allwinvar/ProtonVPN-Next-CLI/releases/latest/download/pvpn-next
chmod +x pvpn-next
sudo ./pvpn-next guest
sudo ./pvpn-next register-cert
sudo ./pvpn-next fetch-servers
sudo ./pvpn-next connect "NL-FREE#15"
```

## Verify

```bash
curl ipinfo.io
```

## Disconnect

```bash
sudo ./pvpn-next disconnect
```

## Verify Build Provenance

```bash
gh attestation verify pvpn-next -R allwinvar/ProtonVPN-Next-CLI
```
