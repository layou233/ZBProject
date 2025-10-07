
# Speed Dial

The documentation is currently W.I.P. More to come! :3

If you have any issues, please report them to our GitHub. We'll be happy to help you there.

## Frequently Asked Questions

### How are the contacts ordered?

They don't really have an order. They are inserted into a Java HashMap using their name strings as keys, so they follow an undocumented order based on Java's internal implementation.

However, you can change the order afterwards.
Go to config/Ghostify/contacts.json and then you can change the order by modifying it.

Make sure you save it in valid JSON format or it will reset the config.

### How do they fetch contacts?

We scan the Abiphone GUI and sync contacts data to the config when you close it.

If you have multiple pages of Abiphone contacts, please try closing at every page to make a complete scan.
