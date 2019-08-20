var i, total_chance, chosen;
total_chance=0;
for (i=1;i<argument_count;i+=2)
{
total_chance+=argument[i];
}
chosen=random(total_chance);
for (i=1;i<argument_count;i+=2)
{
chosen-=argument[i];
if chosen<0
{
return argument[i-1];
}
}
