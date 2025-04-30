# Access Control

## AccessControl Object

```json
{
    "Mode": "",
    "ListTags": [],
    "LowerCase": false
}
```

## Fields

### Mode

Working mode of Access Control module. Options are:

- allow (like whitelist)
- block (like blacklist)
- "" (blank, disable access control)

### ListTags

List of List Tags, which used to select one or more Lists for Access Control matching.

All lists are defined in `Lists` field of the Root object.

During the actual operation, the Access Control module will match the value in the Lists one by one until the same value is found in a certain List.

Therefore, this list is ordered, and the List with a higher matching hit rate should be placed at the top of the list as much as possible to optimize performance.

### LowerCase

Marks all lists as lowercase. Also, the string to be matched will be converted to lowercase before matching. It can be used for case-insensitive matching, but it's the user's responsibility to ensure that all strings in the lists have been converted to lower case beforehand.
