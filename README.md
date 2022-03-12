# SwiftSideways

A multi-platform SwiftUI component for the horizontal scrolling of tabular data in compact areas

Available as an open source library to be incorporated in SwiftUI apps.

_SwiftSideways_ is part of the [OpenAlloc](https://github.com/openalloc) family of open source Swift software tools.

macOS | iOS
:---:|:---:
![](https://github.com/openalloc/SwiftSideways/blob/main/Images/macOSa.png)  |  ![](https://github.com/openalloc/SwiftSideways/blob/main/Images/iOSa.png)

## Features

* Support the horizontal scrolling of wide content, such as tabular data, in compact views
* Presently targeting macOS v11+ and iOS v14+\*
* No external dependencies!

## Sideways Examples

Excerpt from use with `List`:

```swift
import SwiftUI
import Sideways

struct ContentView: View {

    var body: some View {
        List {
            Text("🍇 Pinot Noir")
            Text("🍇 Cabernet Sauvignon")
            Text("🍇 Shiraz")
            Text("🍇 Zinfandel")
            Text("🍇 Gamay noir")
            Text("🍇 Grenache")
            Text("🍇 Cabernet Franc")
            Text("🍇 Merlot")
        }
        .sideways(minWidth: 100)
    }
}
```

...where `minWidth` is the narrowest width to constrain your content. It can be narrower (or wider) than the view width available.

You can also use as a view wrapper:

```swift
var body: some View {
    Sideways(minWidth: 400) {
        List {
            ...
        }
    }
}
```

Or an excerpt from use with _TablerList_...

```swift
var body: some View {
    TablerList(header: header,
               row: row,
               results: fruits)
        .sideways(minWidth: 400)
}
```

## Hat tips

Based on code and ideas found at:

* [onmyway133](https://github.com/onmyway133/blog/issues/769)
* [NuPlay](https://github.com/NuPlay/FitScrollView)

## See Also

* [TablerDemo](https://github.com/openalloc/TablerDemo) - the demonstration app for this library, for value data sources
* [TablerCoreDemo](https://github.com/openalloc/TablerCoreDemo) - the demonstration app for this library, for Core Data sources

Swift open-source libraries (by the same author):

* [SwiftTabler](https://github.com/openalloc/SwiftTabler) - multi-platform SwiftUI component for displaying (and interacting with) tabular data
* [SwiftDetailer](https://github.com/openalloc/SwiftDetailer) - multi-platform SwiftUI component for editing fielded data
* [SwiftDetailerMenu](https://github.com/openalloc/SwiftDetailerMenu) - optional menu support for _SwiftDetailer_
* [AllocData](https://github.com/openalloc/AllocData) - standardized data formats for investing-focused apps and tools
* [FINporter](https://github.com/openalloc/FINporter) - library and command-line tool to transform various specialized finance-related formats to the standardized schema of AllocData
* [SwiftCompactor](https://github.com/openalloc/SwiftCompactor) - formatters for the concise display of Numbers, Currency, and Time Intervals
* [SwiftModifiedDietz](https://github.com/openalloc/SwiftModifiedDietz) - A tool for calculating portfolio performance using the Modified Dietz method
* [SwiftNiceScale](https://github.com/openalloc/SwiftNiceScale) - generate 'nice' numbers for label ticks over a range, such as for y-axis on a chart
* [SwiftRegressor](https://github.com/openalloc/SwiftRegressor) - a linear regression tool that’s flexible and easy to use
* [SwiftSeriesResampler](https://github.com/openalloc/SwiftSeriesResampler) - transform a series of coordinate values into a new series with uniform intervals
* [SwiftSimpleTree](https://github.com/openalloc/SwiftSimpleTree) - a nested data structure that’s flexible and easy to use

And commercial apps using this library (by the same author):

* [FlowAllocator](https://flowallocator.app/FlowAllocator/index.html) - portfolio rebalancing tool for macOS
* [FlowWorth](https://flowallocator.app/FlowWorth/index.html) - a new portfolio performance and valuation tracking tool for macOS

## License

Copyright 2022 FlowAllocator LLC

Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file except in compliance with the License. You may obtain a copy of the License at

[http://www.apache.org/licenses/LICENSE-2.0](http://www.apache.org/licenses/LICENSE-2.0)

Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License.

## Contributing

Contributions are welcome. You are encouraged to submit pull requests to fix bugs, improve documentation, or offer new features. 

The pull request need not be a production-ready feature or fix. It can be a draft of proposed changes, or simply a test to show that expected behavior is buggy. Discussion on the pull request can proceed from there.
