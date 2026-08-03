venv   := ".venv"
pip    := ".venv/Scripts/pip"
mkdocs := ".venv/Scripts/mkdocs"

default: init run

# create .venv and install dependencies
init:
    python -m venv {{venv}}
    {{pip}} install -r requirements.txt

# serve documentation with live reload
run:
    {{mkdocs}} serve || true
