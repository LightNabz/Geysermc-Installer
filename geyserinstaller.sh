#credit
echo -e "\e[34m##################################################"
echo -e "\e[34m#                                                #"
echo -e "\e[34m#                                                #"
echo -e "\e[34m#                MADE BY LIGHNABZ                #"
echo -e "\e[34m#                                                #"
echo -e "\e[34m#                                                #"
echo -e "\e[34m##################################################"

echo -e "\e[1mWelcome to Geysermc Installer!"

#Installing
read -p "Do you want install Geysermc? (y/n): " yn

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
    wget --no-check-certificate https://ci.opencollab.dev//job/GeyserMC/job/Geyser/job/master/lastSuccessfulBuild/artifact/bootstrap/standalone/target/Geyser.jar &> /dev/null
    mkdir Geysermc &> /dev/null
    mv Geyser.jar ~/Geysermc &> /dev/null
    echo nano ~/Geysermc/config.yml >> $PREFIX/bin/geyser-edit 
    chmod +x $PREFIX/bin/geyser-edit &> /dev/null
    echo cd ~/Geysermc && java -Xmx1024M -Xms1024M -jar ~/Geysermc/Geyser.jar >> $PREFIX/bin/geyser-start
    chmod +x $PREFIX/bin/geyser-start &> /dev/null
    echo ""
#Fin(n)ish

    echo -e "\e[92mGeysermc has successfully installed!\e[0m"
    echo -e "For starting geyser type, \e[1mgeyser-start"
    echo -e "For edit config.yml type, \e[1mgeyser-edit"
    echo -e "For stopping geyser type, \e[1mgeyser stop\e[0m, without '-'"
    echo ""
    echo -e "if you get some problem, dm me on discord: \e[4m\e[94mLightNabz#9268"
    
    echo -e "\e[0m"
