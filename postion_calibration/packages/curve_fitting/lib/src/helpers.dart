import 'dart:math';

import 'package:equations/equations.dart';

/// Creates the list of nodes. NOTE: We currently aren't handling the
/// following:
///
/// 1. We have nothing that enforces xvals and yvals to be the same length. If
/// one is longer than the other we take the shorter list.
/// 2. I have no idea if the list of xvals needs to be monotonically
/// increasing
List<InterpolationNode> createNodes(List<double> xvals, List<double> yvals) {
  final nodes = <InterpolationNode>[];
  final length = [xvals.length, yvals.length].reduce(min);
  for (var i = 0; i < length; i++) {
    nodes.add(InterpolationNode(x: xvals[i], y: yvals[i]));
  }
  return nodes;
}
