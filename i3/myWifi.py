# -*- coding: utf-8 -*-
import subprocess
from time import time

class Py3status:
    def read_wifi_info(self):
        try:
            cmd = ['nmcli', 'd', 'wifi']
            proc = subprocess.Popen(cmd, stdout=subprocess.PIPE)
            res = proc.stdout.read().decode('utf-8')
            # each line gives information about one wifi network
            res = res.split("\n")[1:]
            # find connected wifi
            res = [line for line in res if line.startswith("*")]
            # remove asterik and extra whitespaces
            res = " ".join(res[0][1:].split())
            # split information about wifi
            res = res.split()
            res = {
                "security": res[-1],  # could have more than one entry. care.
                "bars": res[-2],
                "signal": res[-3],
                "rate": " ".join(res[-5:-3]),
                "channel": res[-6],
                "mode": res[-7],
                "ssid": " ".join(res[0:-7])
            }
            full_text = res["bars"] + " " + str(res["signal"]) + "% at " + res["ssid"]

        except Exception as err:
            full_text = 'down'

        finally:
            cache_timeout = 10
            response = {
                'full_text': full_text,
                'cached_until': time() + cache_timeout
            }
            return response


if __name__ == "__main__":
    x = Py3status()
    r = x.read_wifi_info()
    print(r)
