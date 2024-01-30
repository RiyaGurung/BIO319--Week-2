sentence <- c('By','the','time','they', 'got', 'back,', 'the', 'lights', 'were', 'all', 'out', 'and', 'everybody', 'was', 'asleep.', 'Everybody,', 'that', 'is,', 'except', 'for', 'Guih', 'Kyom', 'the', 'dung', 'beetle.', 'He', 'was', 'wide', 'awake', 'and', 'on', 'duty,', 'lying', 'on', 'his', 'back', 'with', 'his', 'legs', 'in', 'the', 'air', 'to', 'save', 'the', 'world', 'in', 'case', 'the', 'heavens', 'fell.')
grep_out <- grep(pattern = '^the$', x = sentence)
grep_out
#the ^ and $ are used so we don't get 'they' and only 'the'
#there is no need to use the 'print' function here
grep_out <- grep(pattern = 'a..e', x = sentence)
grep_out
#a..e is looking for words that have 2 spaces between a and e
gsub_out <- gsub(pattern = 't', x = sentence, replacement = '?')
gsub_out
#using the gsub function will replace your code with whatever you want 
dung_beetles <- read.csv('dung_beetles.csv')
#input dung beetles data, which is an integer type of data 

str(dung_beetles)
species_names <- colnames(dung_beetles)
#use the colnames function like this to get all the names of the column and assign it to an object
genus <- grep(pattern = '[C-C]', x = species_names)
genus
#using grep to find the species with genus names that start with 'C' 
epithet_r <- grep(pattern = '_r', x = species_names)
epithet_r
#using grep to find the species that have their second name starting with the letter 'r'
copris <- gsub(pattern = 'Copis', x = species_names, replacement = 'Copris')
copris
#using gsub to replace 'Copis' with 'Copris' - the correct name 
microcopris <- gsub(pattern = 'Microcopis', x = species_names, replacement = 'Microcopris')
microcopris
#again using gsub to correct the species name 
Q8 <- gsub('Copis', 'Copris',
      gsub('Microcopis', 'Microcopris', species_names))
Q8 <- gsub(pattern = 'opis', x = species_names, replacement = 'opris')
#this is another way to do the same thing 
Q8 #if you want to correct both genus names in the same code rather than doing it separately 
str(dung_beetles)
#new dataframe was made to understand how to complete Q9
tiny_df <- data.frame(c('steph', 'fahal','riya'),c('apple','banana', 'orange'))
str(tiny_df)
tiny_df
colnames(tiny_df) <- c('name', 'fruit')
tiny_df
colnames(dung_beetles) <- c(Q8)
#this is the code for Q9 to assign the correct colnames to the original dataset 
dung_beetles
Q10 <- grep(pattern = 'O*_s', x = Q8)
Q10 #idk why it won't work if i use dung_beetles
subset <- dung_beetles$Month 