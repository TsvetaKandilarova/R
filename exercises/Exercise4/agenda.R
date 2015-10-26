# ДВУМЕРНИ ДАННИ // bivariate data

#	  Какво представляват bivariate данни. Най-просто казано това
# са данни, съдържащи две променливи за всяко наблюдение. Например
# данните могат да съдържат пола и възрастта на клиентите на дадена
# банка. Тогава стойностите на пола и възрастта се отнасят за 
# конкретен клиент.
#	Bivariate data е частен случай на Multivariate data.

# Пример: Дали студентите, които пушат учат по- малко

smokes = c("Y","N","N","Y","N","Y","Y","Y","N","Y")
amount = c(1,2,2,3,3,1,2,1,3,2)
table(smokes, amount)

#  Показваме ропорциите (вероятностите) относно данните по редове и колони, чрез:

tmp = table(smokes, amount)
prop.table(tmp, 1) # <- Връща пропорция по редове
prop.table(tmp, 2) # <- Връща пропорция по колони

prop.table(tmp) # Общо сумата е 1-ца

# ВИЗУАЛИЗИРАНЕ НА ДАННИТЕ
# Ф-ция barplot визуализира даните
barplot(table(smokes, amount))
barplot(table(amount, smokes))

# Конвертиране от вектор от стрингове към фактор?
smokes = factor(smokes)

# beside=TRUE <- чертае данните едно до друго
barplot(table(smokes,amount), beside = TRUE)

# Добавяне на легенда
# legend.text <- добавя легенда
barplot(table(amount,smokes),main="table(amount,smokes)", beside=TRUE, 
	legend.text=c("less than 5","5-10","more than 10"))

# РАБОТА С ЧИСЛЕНИ ДАННИ
x = c(5, 5, 5, 13, 7, 11, 11, 9, 8, 9)
y = c(11, 8, 4, 5, 9, 5, 10, 5, 4, 10)

# Визуализиран на данните с боксплот една до друга
boxplot(x,y) # Показва: квантилите, медианата и опашките

# apply <- ф-цията връща матрцица и приема за аргументи, матрица, маргин и ф-ция
# Пример: Матрица с 5х20 търсим средните стойности по редове, по колони и по 2-те
mm = matrix(c(1:100), nrow = 20, ncol = 5) # създаваме матрица
apply(mm, 1, mean) # Връща средното по колони
apply(mm, 2, mean) # Връща средното по редове

ss = matrix(c(1,5,6,3,12,4,0,9,1,2,3,3), nrow = 4, ncol = 3)
apply(ss, 2, sort) # Сортира по колони

# categorical vs. numerical

amount = c(5, 5, 5, 13, 7, 11, 11, 9, 8, 9, 11, 8, 4, 5, 9, 5, 10, 5, 4, 10)
category = c(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2)

# Показва boxplot-а на двата вектора един до друг
boxplot(amount, category) 
# Показва boхplot-a на amount според категориите (level-ите на catagory)
boxplot(amount ~ category) 

# Пример 
# Наблюдение над студенти дали има връзка между пропиването им и оценките по СЕМ

students = c(3,4,5,6,6,6,6,2,2,4,4,5) 
is.drinking = c("No", "Yes", "Yes", "Yes", "No", "Yes", "Yes", "Yes", "Yes", "No", "Yes", "No")


# Bivariate data: numerical vs. numerical

# Проверка кои са инсталираните data students
data()

# Зареждане на data set
data(women)
attach(women) 
names(women)

plot(height,weight) #Ще покаже връзката между двете променливи

# ЛИНЕЙНА РЕГРЕСИЯ
# ДВУМЕРНИ ДАННИ // bivariate data
#   Какво представляват bivariate данни. Най-просто казано това
# са данни, съдържащи две променливи за всяко наблюдение. Например
# данните могат да съдържат пола и възрастта на клиентите на дадена
# банка. Тогава стойностите на пола и възрастта се отнасят за 
# конкретен клиент.
# Bivariate data е частен случай на Multivariate data.
# Пример: Дали студентите, които пушат учат по- малко

smokes = c("Y","N","N","Y","N","Y","Y","Y","N","Y")
amount = c(1,2,2,3,3,1,2,1,3,2)
table(smokes, amount)


#  Показваме ропорциите (вероятностите) относно данните по редове и колони, чрез:

tmp = table(smokes, amount)
prop.table(tmp, 1) # <- Връща пропорция по редове
prop.table(tmp, 2) # <- Връща пропорция по колони
prop.table(tmp) # Общо сумата е 1-ца

  # ВИЗУАЛИЗИРАНЕ НА ДАННИТЕ

# Ф-ция barplot визуализира даните
barplot(table(smokes, amount))
barplot(table(amount, smokes))

# Конвертиране от вектор от стрингове към фактор?
smokes = factor(smokes)

# beside=TRUE <- чертае данните едно до друго
barplot(table(smokes,amount), beside = TRUE)

# Добавяне на легенда
# legend.text <- добавя легенда
barplot(table(amount,smokes),main="table(amount,smokes)", beside=TRUE, 
  legend.text=c("less than 5","5-10","more than 10"))

  # РАБОТА С ЧИСЛЕНИ ДАННИ
x = c(5, 5, 5, 13, 7, 11, 11, 9, 8, 9)
y = c(11, 8, 4, 5, 9, 5, 10, 5, 4, 10)

# Boxplot
# Boxplot-a, известен и като кутия с мустаци, е базиран на 
# five-number дисцриптивната статистика (min, 1st Qu, median, 
# 3rd Qu, max) и може да се използва за графично показване на 
# центъра и разсейването на променливата.

# Визуализиран на данните с боксплот една до друга
boxplot(x,y)

# apply <- ф-цията връща матрцица и приема за аргументи, матрица, маргин и ф-ция
# Пример: Матрица с 5х20 търсим средните стойности по редове, по колони и по 2-те
mm = matrix(c(1:100), nrow = 20, ncol = 5) # създаваме матрица
apply(mm, 1, mean) # Връща средното по колони
apply(mm, 2, mean) # Връща средното по редове

ss = matrix(c(1,5,6,3,12,4,0,9,1,2,3,3), nrow = 4, ncol = 3)
apply(ss, 2, sort) # Сортира по колони

  # categorical vs. numerical

amount = c(5, 5, 5, 13, 7, 11, 11, 9, 8, 9, 11, 8, 4, 5, 9, 5, 10, 5, 4, 10)
category = c(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2)

# Показва boxplot-а на двата вектора един до друг
boxplot(amount, category) 

# Показва boхplot-a на amount според категориите (level-ите на catagory)
boxplot(amount ~ category) 
# Пример 
# Наблюдение над студенти дали има връзка между пропиването им и оценките по СЕМ
students = c(3,4,5,6,6,6,6,2,2,4,4,5) 
is.drinking = c("No", "Yes", "Yes", "Yes", "No", "Yes", "Yes", "Yes", "Yes", "No", "Yes", "No")

  # Bivariate data: numerical vs. numerical
# Проверка кои са инсталираните data students

data()

# Зареждане на data set
data(women)
attach(women) 
names(women)
plot(height,weight) #Ще покаже връзката между двете променливи

# ЛИНЕЙНА РЕГРЕСИЯ

install.packages("UsingR")
library("UsingR")

data("home")
attach(home)
plot(x,y)
abline(lm(y ~ x))
dettach(home)

cor(x,y)