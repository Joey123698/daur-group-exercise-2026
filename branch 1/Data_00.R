# Lecture 0: Understanding R Basics                                         ####


# Install the rio package via CRAN
install.packages("rio")
library(rio)
##__________________________________________________________________________####
## Part 1: Mathematical Operations                                         ####
# Divide 9 by 3;
9/3 # This is an in-line comment


##__________________________________________________________________________####
##Part 2: Variables & Their assignment                                      ####


# Assigning objects to a name so that they show up in the current R session's
# environment
x<-9
y<-3

z<-x/y

#Do NOT use '=' for assignment as that is considered bad practice (although ti works)

# YOu could also assign in a different direction (but please don't)

6->s

#Overwrite x
x<-8

#Creating a vector
a<-c(4,5,6)

#check the type of an object
typeof(a)

#creating a logical vector
l<-c(TRUE,FALSE,T,F) # T & F are abbreviations

# Create a factor variable
fct <- factor(c('Male','Male','Female','Male','Male','Diverse'))

# Check the attributes (or 'metainformation') of the factor
attributes(fct)

#Add a value at position 7
fct[7]<- 'Diverse'
fct

#Add a value not predefined by the levels at position 8
fct[8]<- 'Not diverse'

#Beware of missings in your data!
c(8,NA,5)*c(7,4,3)


## Part 2: Mathematical Operations                                         ####
# Divide 9 by 3;
9/3 # This is an in-line comment

#Multiply two vectors
a*c(9,8,7)


# Multiply a logical with a numerical
a*c(TRUE,FALSE,TRUE)

# The logical is internally converted to a numeric
as.numeric(c(TRUE,FALSE,TRUE))

#Does not work with characters
a*c("1","0","1")

#Check equivalence
a==5
a==c(4,5,6)

# Similarly check greater / smaller with >/< and greater equal / smaller equal
# with >= / <=

#Creating a matrix
A<-matrix(1:16,nrow=2, byrow=T)

##________________________________________________________________________####
## Part 3: Subsetting                                                     #### 


#Subsetting using the index of an element
example<-c(1,2)

#Subsetting based on condition
a[a==6|a==5]
a[a>4&a<=6]

# Subsetting a matrix
A[c(T,F),c(3,8)]
A[,c(3,8)]
A[c(2),]

##__________________________________________________________####
## Part 4: Lists                                            ####

my_list<- list(
  integer = 1L:5L,
  character = 'a',
  logical = c(T,F),
  double = seq(0.2,0.6,by = 0.2)
)

my_list[c('character','integer')]

my_list[['integer']]
my_list$logical
my_list$character

attributes(my_list)




my_data_set<-list(
  gender = c('Male','Female','Diverse','Female'),
  age = c(34,65,23,33),
  income = c(0,1000,3000,1000)
)
names(my_data_set)<-c('gender','age','income')

dim(my_data_set)<- c(3,4)
class(my_data_set)<-'data.frame'

View(my_data_set)











