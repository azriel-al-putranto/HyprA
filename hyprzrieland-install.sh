clear

sudo apt install figlet -y &> /dev/null 2>&1

echo ''
figlet  [ SELAMAT DATANG ]
echo ''
sleep 1
read -p "[ APAKAH KAMU INGIN MENGINSTALL HYPRLAND ]=[Yn]> " azriel1
echo ""

case $azriel1 in
   y|yes)
          echo "[ MENGECHEK SINYAL ]"
 
          ping -c 2 8.8.8.8 &> /dev/null
          if [ $? -eq 0 ]; then
             for i in {1..10}; do
               echo -n -e "[\033[5;32m * \033[0;0m]"
               sleep 0.1
             done
          else
             for i in {1..10}; do
               echo -n -e "[\033[5;31m * \033[0;0m]"
               sleep 0.1
               done
          fi
          ;;
     n|no)
          echo "[ OK TIDAK JADI ]"
          exit
          ;;
esac

echo ''
sleep 1
echo -e "[ MEMULAI MENGINSTALL ]=[\033[5;33m * \033[0;0m]"
sudo add-apt-repository -y ppa:cppiber/hyprland &> /dev/null 2>&1
if sudo apt update -y && sudo apt install -y hyprland && sudo apt install -y lsd &> /dev/null 2>&1 ; then
   sudo apt install -y hypridle hyprlock hyprsunset hyprpaper hyprpicker waybar hyprwayland-scanner swaybg
   echo ""
   echo "[ BERHASIL ]"
   sleep 0.5
   echo "[ MEMULAI PENGINSTALLAN KE 2 ]"
else
   echo "[ TERJADINYA ERROR ]"
   exit
fi

          

echo ''



echo "[ MENGECHEK SINYAL ]"

ping -c 2 8.8.8.8 &> /dev/null
if [ $? -eq 0 ]; then
  for i in {1..10}; do
  echo -n -e "[\033[5;32m * \033[0;0m]"
  sleep 0.1
  done
else
  for i in {1..10}; do
  echo -n -e "[\033[5;31m * \033[0;0m]"
  sleep 0.1
  done
fi

echo ''
sleep 1
echo -e "[ MEMULAI MENGINSTALL ]=[\033[5;33m * \033[0;0m]"
  if sudo apt install -y fuzzel &> /dev/null 2>&1 ; then
       echo "[ BERHASIL ]"
       sleep 0.5
       echo "[ MEMULAI PENGINSTALLAN KE 3 ]"
  else
       echo "[ TERJADINYA ERROR ]"
       exit
  fi
  
          

echo ''




echo ""

          
echo "[ MENGECHEK SINYAL ]"

ping -c 2 8.8.8.8 &> /dev/null
if [ $? -eq 0 ]; then
  for i in {1..10}; do
  echo -n -e "[\033[5;32m * \033[0;0m]"
  sleep 0.1
  done
else
  for i in {1..10}; do
  echo -n -e "[\033[5;31m * \033[0;0m]"
  sleep 0.1
  done
fi

echo ''
sleep 1
echo -e "[ MEMULAI MENGINSTALL ]=[\033[5;33m * \033[0;0m]"
if sudo apt install -y waybar &> /dev/null 2>&1 ; then
     echo "[ BERHASIL ]"
       echo "[ BERHASIL ]"
       sleep 0.5
       echo "[ MEMULAI PENGINSTALLAN KE 4 ]"
else
     echo "[ TERJADINYA ERROR ]"
     exit
fi

          

echo ''




read -p "[ APAKAH KAMU INGIN MENGUBAH TAMPILAN COMMAND / ASK  ]=[Yn]> " azriel4
echo ""

case $azriel4 in
    y|yes)
          echo "$(cat azriel.txt)" >> ~/.bashrc
          ;;
     n|no)
          echo "[ OK TIDAK JADI ]"
          echo ''
          ;;
esac


read -p "[ APAKAH KAMU INGIN MENGUBAH TAMPILAN COMMAND / ASK DI mode root ]=[Yn]> " azriel6
echo ""

case $azriel6 in
    y|yes)
          if [ $EUID -eq 0 ]; then
              echo "$(cat azrielroot.txt)" >> ~/.bashrc
          else
               echo "[ KAMU TIDAK BERJALAN DI MODE ROOT ]"
          fi
          ;;
     n|no)
          echo "[ OK TIDAK JADI ]"
          echo ''
          ;;
esac

echo "[ MENGECHEK SINYAL ]"

ping -c 2 8.8.8.8 &> /dev/null
if [ $? -eq 0 ]; then
  for i in {1..10}; do
  echo -n -e "[\033[5;32m * \033[0;0m]"
  sleep 0.1
  done
else
  for i in {1..10}; do
  echo -n -e "[\033[5;31m * \033[0;0m]"
  sleep 0.1
  done
fi

echo ''
sleep 1
echo -e "[ MEMULAI MENGINSTALL ]=[\033[5;33m * \033[0;0m]"
if sudo apt install -y kitty &> /dev/null 2>&1 ; then
      echo "[ BERHASIL ]"
       echo "[ BERHASIL ]"
       sleep 0.5
       echo "[ PENGINSTALLAN SUDAH SELESAI ]"
else
      echo "[ TERJADINYA ERROR ]"
      exit
fi

          

echo ''



for i in {1..10}; do
  echo -e "[\033[5;32m * \033[0;0m]====[BERHASIL]"
  sleep 0.1
done

sudo apt-add-repository ppa:ytvwld/asciiquarium
sudo apt update -y &> /dev/null 2>&1
sudo apt install -y swaylock && sudo apt install -y asciiquarium 2>&1
sudo apt install cava -y && sudo apt install -y pipes-sh 2>&1

mkdir -p ~/.local/share/fonts
cd ~/.local/share/fonts
wget https://github.com/ryanoasis/nerd-fonts/releases/latest/download/JetBrainsMono.zip
unzip JetBrainsMono.zip
rm JetBrainsMono.zip
sleep 1
fc-cache -fv
sleep 1
cd
sleep 1
cd azriel-hyprland
sleep 1

./ji.sh &> /dev/null 2>&1

hyprland &> /dev/null 2>&1
clear
sleep 1


rm -r /home/$USER/.config/hypr

cp -r hypr /home/$USER/.config/

cp -r cava /home/$USER/.config/

if command -v fuzzel &> /dev/null 2>&1 ; then
    cp -r fuzzel /home/$USER/.config/
else
    echo "[ KAMU TIDAK MEMPUNYAI FUZZEL ]"
fi

if command -v kitty &> /dev/null 2>&1 ; then
    cp -r kitty /home/$USER/.config/
else
    echo "[ KAMU TIDAK MEMPUNYAI KITTY ]"
fi

if command -v waybar &> /dev/null 2>&1 ; then
    cp -r waybar /home/$USER/.config/
else
    echo "[ KAMU TIDAK MEMPUNYAI WAYBAR ]"
fi

cp ./wallpapper/japanes-city.jpg /home/$USER/Gambar/

echo "[ SELESAI ]"
sleep 0.1
read -p  "[ APAKAH KAMU INGIN ME REBOOT ]=[Yn]> " final
echo ""

case $final in
     y)
       reboot
       ;;
     n)
       exit
       ;;
esac
