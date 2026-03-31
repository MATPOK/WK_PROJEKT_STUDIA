@echo off
echo     Instalator Srodowiska - Projekt Wizja Komputerowa

echo [1/4] Tworzenie wirtualnego srodowiska (venv)...
python -m venv venv

echo [2/4] Aktywacja srodowiska i aktualizacja pip...
call venv\Scripts\activate.bat
python -m pip install --upgrade pip

echo [3/4] Pobieranie i instalacja wymaganych bibliotek...
pip install -r requirements.txt

echo [4/4] Konfiguracja Jupytera dla VS Code...
python -m ipykernel install --user --name=venv_projekt --display-name "Python (moj_projekt_venv)"



echo Srodowisko jest gotowe do pracy.
echo Mozesz teraz otworzyc projekt w VS Code i uruchomic notatniki.
echo Pamietaj, aby w prawym gornym rogu notatnika wybrac kernel: "Python (moj_projekt_venv)".
pause