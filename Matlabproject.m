MatlabData = readtable('/Users/joshgilbert/Documents/MatlabData.xlsx')

names = MatlabData.Names
GenderF = MatlabData.Female
GenderM = MatlabData.Male
Black = MatlabData.Black
White = MatlabData.White
Asian = MatlabData.Asian
Height = MatlabData.Height
Income = MatlabData.Income
HairBlonde = MatlabData.HairBlonde
HairBrunette = MatlabData.HairBrunette
HairRed = MatlabData.HairRed
HairBlack = MatlabData.HairBlack
Age = MatlabData.Age
Smoker = MatlabData.Smoker
Children = MatlabData.Children
NorthEngland = MatlabData.NorthernE
MidlandsEngland = MatlabData.MidlandE
SouthEngland = MatlabData.SouthernE
Wales = MatlabData.Wales
Scotland = MatlabData.Scotland
Homosexual = MatlabData.Homosexual

totalmatch = find(Homosexual==1 & GenderF==1)
%totalmatch = find(Age>18 & Age<30 & Income>40 & (HairBlonde==1 | HairBrunette==1) & Asian==1)
names(totalmatch)