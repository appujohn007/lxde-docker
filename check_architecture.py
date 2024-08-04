import subprocess

def get_architecture():
    try:
        # Run the command to get the architecture
        arch = subprocess.check_output(['uname', '-m']).decode('utf-8').strip()
        print(f"System Architecture: {arch}")
    except subprocess.CalledProcessError as e:
        print(f"Error occurred: {e}")

if __name__ == "__main__":
    get_architecture()
