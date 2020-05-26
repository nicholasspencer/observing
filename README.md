# Observing

A simple MobX/Provider convience widget. 

## Usage

There are 6 generic variants of `Observing` so that it's compatible with 
Provider's `Consumer`.  Any type may be used, not just mobx stores, as 
long as they're provided as an ancestor to the `Observing` widget of course. 
In fact it works with `ChangeNotifierProvider` as well for some real reactive 
programming fun.

```dart
Provider(
  create: (context) => ViewModel(),
  child: Observing<ViewModel>(
    builder: (context, viewModel) => GestureDetector(
      onTap: viewModel.increment,
      child: Text(
        viewModel.value.toString(),
        key: key,
        textDirection: TextDirection.ltr,
      ),
    ),
  ),
);
```
