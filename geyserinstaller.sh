#credit
echo -e "\e[34m##################################################"
echo -e "\e[34m#                                                #"
echo -e "\e[34m#                                                #"
echo -e "\e[34m#                MADE BY LIGHNABZ                #"
echo -e "\e[34m#                                                #"
echo -e "\e[34m#                                                #"
echo -e "\e[34m##################################################"

echo -e "\e[0m\e[1mWelcome to Geysermc Installer!"
echo -e "\e[0m\e[1mThis is Unofficial Geysermc Installer"
echo -e "\e[0m\e[1mCredit to: \e[4m\e[94mhttps://geysermc.org"

#Installing
read -p "Do you want to proceed installing Geysermc? [y/n]: " yn

    case $yn in
        [yY] ) echo Start Downloading, This may take a few minutes..;;
        [nN] ) echo Cancel process..;
               exit;;
           * ) echo Invalid input, Please input y/n..;
               exit 1;;
esac

    cd ~
    apt install wget -y &> /dev/null
    apt install nano -y &> /dev/null
    apt install openjdk-17 -y &> /dev/null
    wget --no-check-certificate https://download.geysermc.org/v2/projects/geyser/versions/latest/builds/latest/downloads/standalone -O Geyser-Standalone.jar &> /dev/null
    mkdir Geysermc &> /dev/null
    mv Geyser-Standalone.jar ~/Geysermc/ &> /dev/null
    echo "nano ~/Geysermc/config.yml" >> $PREFIX/bin/geyser-edit 
    chmod +x $PREFIX/bin/geyser-edit &> /dev/null
    echo "cd ~/Geysermc && java -Xmx1024M -Xms1024M -jar ~/Geysermc/Geyser-Standalone.jar" >> $PREFIX/bin/geyser-start
    chmod +x $PREFIX/bin/geyser-start &> /dev/null
    cd ~/Geysermc
    wget --no-check-certificate https://raw.githubusercontent.com/LightNabz/Geysermc-Installer/main/geyseruninstaller.sh &> /dev/null
    echo "bash ~/Geysermc/geyseruninstaller.sh" >> $PREFIX/bin/geyser-delete
    wget --no-check-certificate https://raw.githubusercontent.com/LightNabz/Geysermc-Installer/main/geyserupdater.sh &> /dev/null
    echo "bash ~/Geysermc/geyserupdater.sh" >> $PREFIX/bin/geyser-update
    echo ""
#Fin(n)ish

    echo -e "\e[92mGeysermc has successfully installed!"
    echo -e "\e[0mFor starting geyser type geyser-start"
    echo -e "\e[0mFor edit config.yml type geyser-edit"
    echo -e "\e[0mFor stopping geyser type geyser stop, without '-'"
    echo ""
    echo -e "\e[0mIf you get some problem, PM me on Discord: \e[4m\e[94mLightNabz#9268"
    
    echo -e "\e[0m"
