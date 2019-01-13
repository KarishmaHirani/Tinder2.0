%% identifying the sample size for our gender matches
nGender = 1000;
%% rounding half of the 1000 sample size to the number one.
number0f0nesGender= round(nGender/2)
%% all zeros to start
rGender= zeros(1, nGender)
%% assigning half of the 1000 numbers of zeros into ones
indexesGender = randperm(nGender, number0f0nesGender);
rGender(indexesGender)= 1
sum(rGender)
%% identifying the sample size for our matches who are homosexual
nHomo = 1000;
%% rounding half of the 1000 sample size to the number one.
number0f0nesHomo= round(nHomo/3)
%% all zeros to start
rHomo= zeros(1, nHomo)
%% assigning half of the 1000 numbers of zeros into ones
indexesHomo = randperm(nHomo, number0f0nesHomo);
rHomo(indexesHomo)= 1
! switch rGender(indexesGender)= 1 
sum(rHomo)
%% identifying the sample size for our ethnicity matches
nEth = 1000,
%% rounding a third of the 1000 sample size to the number one
number0f0nesEth= round(nEth/3)
%% all zeros to start
rEth= zeros(1, nEth)
%% assigning a third of the 1000 numbers of zeros into ones
indexesEth = randperm(nEth, number0f0nesEth);
rEth(indexesEth)= 1
sum(rEth)

%% identifying the sample size for our hair colour matches
nHair = 1000,
%% rounding a third of the 1000 sample size to the number one
number0f0nesHair= round(nHair/4)
%% all zeros to start
rHair= zeros(1, nHair)
%% assigning a third of the 1000 numbers of zeros into ones
indexesHair = randperm(nHair, number0f0nesHair);
rHair(indexesHair)= 1
sum(rHair)

%% identifying the sample size for our matches who smoke.
nSmoke = 1000;
%% rounding half of the 1000 sample size to the number one.
number0f0nesSmoke= round(nSmoke/2)
%% all zeros to start
rSmoke= zeros(1, nSmoke)
%% assigning half of the 1000 numbers of zeros into ones
indexesSmoke = randperm(nSmoke, number0f0nesSmoke);
rSmoke(indexesSmoke)= 1
sum(rSmoke)

%% identifying the sample size for our matches who have children
nChild = 1000;
%% rounding half of the 1000 sample size to the number one.
number0f0nesChild= round(nChild/2)
%% all zeros to start
rChild= zeros(1, nChild)
%% assigning half of the 1000 numbers of zeros into ones
indexesChild = randperm(nChild, number0f0nesChild);
rChild(indexesChild)= 1
sum(rChild)

%% identifying the sample size for our matches in terms of location
nLoc = 1000,
%% rounding a third of the 1000 sample size to the number one
number0f0nesLoc= round(nLoc/5)
%% all zeros to start
rLoc= zeros(1, nLoc)
%% assigning a third of the 1000 numbers of zeros into ones
indexesLoc = randperm(nLoc, number0f0nesLoc);
rHair(indexesLoc)= 1
sum(rLoc)
