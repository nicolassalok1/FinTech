#RUN CA EN AMONT :
#Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass
#puis :
#./setup.ps1

# Arrêter en cas d’erreur
$ErrorActionPreference = "Stop"

conda deactivate
conda env remove --name FinTech
conda create --name FinTech python=3.12
conda activate FinTech

python.exe -m pip install --upgrade pip

Write-Host "Installation des dépendances Python..."

conda env update --file=environment.yml
pip install -r requirements.txt

Write-Host "Setup termine avec succes."
