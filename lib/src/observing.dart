import 'package:flutter/widgets.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

/// {@template observing.observing}
///
/// A [StatelessObserverWidget] class that provides a [Provider<T>]
/// from its ancestors and passes its value to [builder].
///
/// [builder] is required.
/// [name] is used by [Observer] for debugging purposes.
///
/// ```dart
/// Observing<ViewModel>(
///   builder: (context, viewModel) {
///     return GestureDetector(
///       onTap: viewModel.increment,
///       child: Text(
///         viewModel.value.toString(),
///         key: key,
///       ),
///     );
///   }
/// );
/// ```
///
/// See also: [Provider], [Consumer], [Observer]
///
/// {@endtemplate}
class Observing<T> extends StatelessObserverWidget {
  Observing({
    @required this.builder,
    Key key,
    String name,
  })  : assert(builder != null),
        super(
          key: key,
          name: name,
        );

  /// {@template observing.observing.builder}
  ///
  /// A [WidgetBuilder] with [Provider<T>] as an additional parameter
  ///
  /// {@endtemplate}
  final Widget Function(BuildContext, T) builder;

  @override
  Widget build(BuildContext context) {
    return builder(
      context,
      Provider.of<T>(context),
    );
  }
}

/// {@macro observing.observing}
class Observing2<A, B> extends StatelessObserverWidget {
  Observing2({
    @required this.builder,
    Key key,
    String name,
  })  : assert(builder != null),
        super(
          key: key,
          name: name,
        );

  /// {@macro observing.observing.builder}
  final Widget Function(BuildContext, A, B) builder;

  @override
  Widget build(BuildContext context) {
    return builder(
      context,
      Provider.of<A>(context),
      Provider.of<B>(context),
    );
  }
}

/// {@macro observing.observing}
class Observing3<A, B, C> extends StatelessObserverWidget {
  Observing3({
    @required this.builder,
    Key key,
    String name,
  })  : assert(builder != null),
        super(
          key: key,
          name: name,
        );

  /// {@macro observing.observing.builder}
  final Widget Function(BuildContext, A, B, C) builder;

  @override
  Widget build(BuildContext context) {
    return builder(
      context,
      Provider.of<A>(context),
      Provider.of<B>(context),
      Provider.of<C>(context),
    );
  }
}

/// {@macro observing.observing}
class Observing4<A, B, C, D> extends StatelessObserverWidget {
  Observing4({
    @required this.builder,
    Key key,
    String name,
  })  : assert(builder != null),
        super(
          key: key,
          name: name,
        );

  /// {@macro observing.observing.builder}
  final Widget Function(BuildContext, A, B, C, D) builder;

  @override
  Widget build(BuildContext context) {
    return builder(
      context,
      Provider.of<A>(context),
      Provider.of<B>(context),
      Provider.of<C>(context),
      Provider.of<D>(context),
    );
  }
}

/// {@macro observing.observing}
class Observing5<A, B, C, D, E> extends StatelessObserverWidget {
  Observing5({
    @required this.builder,
    Key key,
    String name,
  })  : assert(builder != null),
        super(
          key: key,
          name: name,
        );

  /// {@macro observing.observing.builder}
  final Widget Function(BuildContext, A, B, C, D, E) builder;

  @override
  Widget build(BuildContext context) {
    return builder(
      context,
      Provider.of<A>(context),
      Provider.of<B>(context),
      Provider.of<C>(context),
      Provider.of<D>(context),
      Provider.of<E>(context),
    );
  }
}

/// {@macro observing.observing}
class Observing6<A, B, C, D, E, F> extends StatelessObserverWidget {
  Observing6({
    @required this.builder,
    Key key,
    String name,
  })  : assert(builder != null),
        super(
          key: key,
          name: name,
        );

  /// {@macro observing.observing.builder}
  final Widget Function(BuildContext, A, B, C, D, E, F) builder;

  @override
  Widget build(BuildContext context) {
    return builder(
      context,
      Provider.of<A>(context),
      Provider.of<B>(context),
      Provider.of<C>(context),
      Provider.of<D>(context),
      Provider.of<E>(context),
      Provider.of<F>(context),
    );
  }
}
