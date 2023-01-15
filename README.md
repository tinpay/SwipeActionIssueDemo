# SwipeActionIssueDemo

On iOS15, if you switch to another View while swiping, you will not be able to swipe

In case of iOS16, this kind of problem does not occur


## iOS 16
- ![画面収録_2023-01-15_10_23_27_AdobeExpress](https://user-images.githubusercontent.com/1954611/212504669-cf05fb27-82aa-4269-89ea-234f022d7b5b.gif)


## iOS 15
- ![画面収録_2023-01-15_10_22_05_AdobeExpress](https://user-images.githubusercontent.com/1954611/212504665-d09fae4f-6060-4a8d-8172-1916745a6e6f.gif)


# Solutions

Setting @Environment editMode to .inactive when switching views solves the problem

[e3bf597
](https://github.com/tinpay/SwipeActionIssueDemo/pull/1/commits/e3bf597efb013d1de7c02511e62791bd575d40d7)

```swift
    @Environment(\.editMode) var editMode
    @State var viewMode: Int = 0

    var body: some View {
        VStack {
            HStack {
                Button {
                    viewMode = 0
                    editMode?.wrappedValue = .inactive
                } label: {
                    Text("View1")
                }
                Spacer()
                    .frame(width: 30)
                Button {
                    viewMode = 1
                    editMode?.wrappedValue = .inactive
                } label: {
                    Text("View2")
                }
            }
            if viewMode == 0 {
                Demo1View()
            } else {
                Demo2View()
            }
        }
    }
```
