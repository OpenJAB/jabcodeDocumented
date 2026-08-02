venv   := ".venv"
pip    := ".venv/Scripts/pip"
mkdocs := ".venv/Scripts/mkdocs"

# create .venv and install dependencies
init:
    python -m venv {{venv}}
    {{pip}} install -r requirements.txt

# activate the virtual environment
source:
    . {{venv}}/Scripts/activate

# serve documentation with live reload
run: source
    {{mkdocs}} serve
