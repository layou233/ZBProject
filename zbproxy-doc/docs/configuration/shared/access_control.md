# Access Control

## AccessControl Object

```json
{
    "Mode": "",
    "ListTags": []
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
