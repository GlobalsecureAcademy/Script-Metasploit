dpkg --add-architecture i386
apt-get update && apt-get install wine32 git
git clone https://github.com/BlackMathIT/Esteemaudit-Metasploit
mkdir /usr/share/metasploit-framework/modules/exploits/windows/rdp/
cp Esteemaudit-Metasploit/esteemaudit.rb /usr/share/metasploit-framework/modules/exploits/windows/rdp/
mkdir /usr/share/esteemaudit/
cp Esteemaudit-Metasploit/files/* /usr/share/esteemaudit/
wine /usr/share/esteemaudit/Esteemaudit-2.1.0.exe 2>0
rm -rf Esteemaudit-Metasploit