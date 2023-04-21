# SwiftSideways

A multi-platform SwiftUI component for the horizontal scrolling of tabular data in compact areas

Available as an open source library to be incorporated in SwiftUI apps.

_SwiftSideways_ is part of the [OpenAlloc](https://github.com/openalloc) family of open source Swift software tools.

macOS | iOS
:---:|:---:
![](https://github.com/openalloc/SwiftSideways/blob/main/Images/macOSa.png)  |  ![](https://github.com/openalloc/SwiftSideways/blob/main/Images/iOSa.png)

## Features

* Support the horizontal scrolling of wide content, such as tabular data, in compact views
* Available as a conventional view that can wrap your content, and also as a View Modifier
* Presently targeting macOS v11+ and iOS v14+\*
* No external dependencies!

## Sideways Examples

Use with any wide content, such as `List`:

```swift
import SwiftUI
import Sideways

struct ContentView: View {

    var body: some View {
        List {
            Text("🍇 Pinot Noir, 🍇 Blauburgunder, 🍇 Spätburgunder, 🍇 Rulandské modré, 🍇 Pinot Nero")
            Text("🍇 Cabernet Sauvignon, 🍇 Bouchet, 🍇 Bouche, 🍇 Petit-Bouchet, 🍇 Petit-Cabernet, 🍇 Petit-Vidure, 🍇 Vidure, 🍇 Sauvignon Rouge")
            Text("🍇 Syrah, 🍇 Shiraz, 🍇 Hermitage, 🍇 Antourenein noir, 🍇 Candive")
            Text("🍇 Gamay, 🍇 Gamay Noir à Jus Blanc Sicily")
            Text("🍇 Grenache, 🍇 Garnatxa negre, 🍇 Alicante, 🍇 Cannonau, 🍇 Garnacha tinta, 🍇 Grenache noir")
            Text("🍇 Cabernet Franc, 🍇 Bouchet, 🍇 Bouchy, 🍇 Breton")
            Text("🍇 Malbec, 🍇 Auxerrois in Cahors, 🍇 Côt, 🍇 Pressac")
            Text("🍇 Merlot, 🍇 Saint-Macaire, 🍇 Picard, 🍇 Langon")
            Text("🍇 Petit Verdot, 🍇 Verdot")
        }
        .sideways(minWidth: 1200, showIndicators: true)
        .frame(width: 400)
    }
}
```

...where the `minWidth` of 1200 specifies the width of your content in the scrollable region. 

The frame width of 400 is the viewport size. It's explicit here, but often it's implicit and not necessary to specify.

You can also wrap your content in a `Sideways` view:

```swift
var body: some View {
    Sideways(minWidth: 1200) {
        List {
            ...
        }
    }
}
```

Or an excerpt from use with the companion component _TablerList_...

```swift
var body: some View {
    TablerList(header: header,
               row: row,
               results: fruits)
        .sideways(minWidth: 1200)
}
```

## Hat tips

Based on code and ideas found at:

* [onmyway133](https://github.com/onmyway133/blog/issues/769)
* [NuPlay](https://github.com/NuPlay/FitScrollView)

And the OG software...

![](https://github.com/openalloc/SwiftSideways/blob/main/Images/sw.jpg)

## See Also

This library is a member of the _OpenAlloc Project_.

* [_OpenAlloc_](https://openalloc.github.io) - product website for all the _OpenAlloc_ apps and libraries
* [_OpenAlloc Project_](https://github.com/openalloc) - Github site for the development project, including full source code

## License

Copyright 2021, 2022 OpenAlloc LLC

Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file except in compliance with the License. You may obtain a copy of the License at

[http://www.apache.org/licenses/LICENSE-2.0](http://www.apache.org/licenses/LICENSE-2.0)

Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License.

## Contributing

Contributions are welcome. You are encouraged to submit pull requests to fix bugs, improve documentation, or offer new features. 

The pull request need not be a production-ready feature or fix. It can be a draft of proposed changes, or simply a test to show that expected behavior is buggy. Discussion on the pull request can proceed from there.
