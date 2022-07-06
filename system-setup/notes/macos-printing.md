# Set up printing with good dithering on hp 4250

enable cups webinterface

```
  $ cupsctl WebInterface=yes
```

Install macos gutenprint drivers.

Use gutenprint HP LaserJet 4250 driver.

Load cups at `localhost:631`.

Modify the default options of the printer. Set page size etc. Under _output 
common options_ set Image Type to text.
