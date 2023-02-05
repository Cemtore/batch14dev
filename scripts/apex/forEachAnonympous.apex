list<string> listStr = new list<string>();
listStr.add('out of bound');
listStr.add('yes');
listStr.add('alright');
listStr.add('yes sir');
listStr.add('');

string concateStr = '';

for (string eachString : listStr) {
    concateStr += ' *** ' + eachString;

}

system.debug(concateStr);
