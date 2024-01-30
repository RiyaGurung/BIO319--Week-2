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
