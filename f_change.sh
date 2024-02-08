#!/data/data/com.termux/files/usr/bin/bash
#Made by U7P4L 1N....
#Date 21 JAN 2024
#Create a function to change the Font
#Create a manue -----

echo -e "\e[31;1m Fonts … "
echo "  "
echo -e "\e[32;1m[01]\e[33;1m AnonymousPro"
echo -e "\e[32;1m[02]\e[33;1m Arimo"
echo -e "\e[32;1m[03]\e[33;1m Cousine"
echo -e "\e[32;1m[04]\e[33;1m ProFont"
echo -e "\e[32;1m[05]\e[33;1m FiraMono"
echo -e "\e[32;1m[06]\e[33;1m GoMono"
echo -e "\e[32;1m[07]\e[33;1m Hack"
echo -e "\e[32;1m[08]\e[33;1m NovaMono"
echo -e "\e[32;1m[09]\e[33;1m RobotoMono"
echo -e "\e[32;1m[10]\e[33;1m Default"
echo " "
echo -ne "\e[35;1m Choose: "
read fc_optn
if [[ $fc_optn == "1" || $fc_optn == "01" ]];then
	cat fonts-master/AnonymousPro/'Anonymice Powerline Italic.ttf' >> ~/.termux/font.ttf
elif [[ $fc_optn == "2" || $fc_optn == "02" ]];then
	cat fonts-master/Arimo/'Arimo for Powerline.ttf' >> ~/.termux/font.ttf
elif [[ $fc_optn == "3" || $fc_optn == "03" ]];then
	cat fonts-master/Cousine/'Cousine for Powerline.ttf' >> ~/.termux/font.ttf
elif [[ $fc_optn == "4" || $fc_optn == "04" ]];then
        cat fonts-master/ProFont/'ProFont For Powerline.ttf' >> ~/.termux/font.ttf
elif [[ $fc_optn == "5" || $fc_optn == "05" ]];then             cat fonts-master/FiraMono/'FuraMono-Medium Powerline.otf' >> ~/.termux/font.ttf
elif [[ $fc_optn == "6" || $fc_optn == "06" ]];then             cat fonts-master/GoMono/'Go Mono for Powerline.ttf' >> ~/.termux/font.ttf
elif [[ $fc_optn == "7" || $fc_optn == "07" ]];then             cat fonts-master/Hack/Hack-Regular.ttf >> ~/.termux/font.ttf
elif [[ $fc_optn == "8" || $fc_optn == "08" ]];then             cat fonts-master/NovaMono/'NovaMono for Powerline.ttf' >> ~/.termux/font.ttf
elif [[ $fc_optn == "9" || $fc_optn == "09" ]];then             cat fonts-master/RobotoMono/'Roboto Mono Medium for Powerline.ttf' >> ~/.termux/font.ttf
elif [[ $fc_optn == "10" ]];then  
	echo -e "\e[36;1m THIS IS MADE BY U7P4L 1N "
else 
	echo -e "\e[31;1m Invalid Option.....! "

fi

