if (num4 >= 10) {
	num4 = 0;
	num3++;
}
if (num3 >= 10) {
	num3 = 0;
	num2++;
}
if (num2 >= 10) {
	num2 = 0;
	num1++;
}
if (num1 >= 10) {
	num1 = 0;
	letter++;
}
if (letter >= 27) {
	letter = 1;
}
switch (letter) {
	case 1 :
		strNum = "A" + string(num1) + string(num2) + string(num3) + string(num4);
		break;
	case 2 :
		strNum = "B" + string(num1) + string(num2) + string(num3) + string(num4);
		break;
	case 3 :
		strNum = "C" + string(num1) + string(num2) + string(num3) + string(num4);
		break;
	case 4 :
		strNum = "D" + string(num1) + string(num2) + string(num3) + string(num4);
		break;
	case 5 :
		strNum = "E" + string(num1) + string(num2) + string(num3) + string(num4);
		break;
	case 6 :
		strNum = "F" + string(num1) + string(num2) + string(num3) + string(num4);
		break;
	case 7 :
		strNum = "G" + string(num1) + string(num2) + string(num3) + string(num4);
		break;
	case 8 :
		strNum = "H" + string(num1) + string(num2) + string(num3) + string(num4);
		break;
	case 9 :
		strNum = "I" + string(num1) + string(num2) + string(num3) + string(num4);
		break;
	case 10 :
		strNum = "J" + string(num1) + string(num2) + string(num3) + string(num4);
		break;
	case 11 :
		strNum = "K" + string(num1) + string(num2) + string(num3) + string(num4);
		break;
	case 12 :
		strNum = "L" + string(num1) + string(num2) + string(num3) + string(num4);
		break;
	case 13 :
		strNum = "M" + string(num1) + string(num2) + string(num3) + string(num4);
		break;
	case 14 :
		strNum = "N" + string(num1) + string(num2) + string(num3) + string(num4);
		break;
	case 15 :
		strNum = "O" + string(num1) + string(num2) + string(num3) + string(num4);
		break;
	case 16 :
		strNum = "P" + string(num1) + string(num2) + string(num3) + string(num4);
		break;
	case 17 :
		strNum = "Q" + string(num1) + string(num2) + string(num3) + string(num4);
		break;
	case 18 :
		strNum = "R" + string(num1) + string(num2) + string(num3) + string(num4);
		break;
	case 19 :
		strNum = "S" + string(num1) + string(num2) + string(num3) + string(num4);
		break;
	case 20 :
		strNum = "T" + string(num1) + string(num2) + string(num3) + string(num4);
		break;
	case 21 :
		strNum = "U" + string(num1) + string(num2) + string(num3) + string(num4);
		break;
	case 22 :
		strNum = "V" + string(num1) + string(num2) + string(num3) + string(num4);
		break;
	case 23 :
		strNum = "W" + string(num1) + string(num2) + string(num3) + string(num4);
		break;
	case 24 :
		strNum = "X" + string(num1) + string(num2) + string(num3) + string(num4);
		break;
	case 25 :
		strNum = "Y" + string(num1) + string(num2) + string(num3) + string(num4);
		break;
	case 26 :
		strNum = "Z" + string(num1) + string(num2) + string(num3) + string(num4);
		break;
}

global.strNum = strNum;