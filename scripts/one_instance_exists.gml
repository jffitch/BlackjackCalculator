var i;
for (i=0; i<argument_count; i++) {
    if (instance_exists(argument[i])) {
        return true;
        }
    }
return false;
