import subprocess
import sys

def handler(context, event):
    try:
        subprocess.run('bash ./init.sh', shell=True, stdout=sys.stdout, stderr=sys.stderr)
    except Exception as e:
        print(e)
        return "got error %s" % e
        
    return 'initial done'

