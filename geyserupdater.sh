#credit
echo -e "\e[34m##################################################"
echo -e "\e[34m#                                                #"
echo -e "\e[34m#                                                #"
echo -e "\e[34m#                MADE BY LIGHNABZ                #"
echo -e "\e[34m#                                                #"
echo -e "\e[34m#                                                #"
echo -e "\e[34m##################################################"

echo -e "\e[0m\e[1mWelcome to Geysermc Updater!"

#Installing
read -p "Do you want update Geysermc? (y/n): " yn

    case $yn in
        [yY] ) echo Start Updating, This may take a few minutes..;;
        [nN] ) echo Cancel process..;
               exit;;
           * ) echo Invalid input, Please input y/n..;
               exit 1;;
esac
cd ~/Geysermc
rm -rf Geyser-Standalone.jar &> /dev/null
wget --no-check-certificate https://ci.opencollab.dev//job/GeyserMC/job/Geyser/job/master/lastSuccessfulBuild/artifact/bootstrap/standalone/target/Geyser-Standalone.jar &> /dev/null
cd ~

#Fin(n)ish

    echo -e "\e[92mGeysermc has successfully Updated!"
    echo ""
    echo -e "\e[0mIf you get some problem, PM me on Discord: \e[4m\e[94mLightNabz#9268"
    
    echo -e "\e[0m"
