import subprocess

def whodis_python():
  newphone = subprocess.run("whoami", capture_output = True)
  whodis = newphone.stdout.decode("utf-8")
  return whodis
