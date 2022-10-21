import 'dart:math';

import 'package:equations/equations.dart';

/// Creates the list of nodes. NOTE: We currently aren't handling the
/// following:
///
/// 1. We have nothing that enforces xvals and signals to be the same length. If
/// one is longer than the other we take the shorter list.
/// 2. I have no idea if the list of xvals needs to be monotonically
/// increasing
List<InterpolationNode> createNodes(List<double> xvals, List<double> signals) {
  final nodes = <InterpolationNode>[];
  final length = [xvals.length, signals.length].reduce(min);
  for (var i = 0; i < length; i++) {
    nodes.add(InterpolationNode(x: xvals[i], y: signals[i]));
  }
  return nodes;
}

/// Calculates the weighted average
double weightedAverage(List<double> values, List<double> weights) {
  var sum = 0.0;
  final sumWeights = weights.reduce((value, element) => value + element);
  for (var i = 0; i < values.length; i++) {
    sum += values[i] * weights[i];
  }
  return sum / sumWeights;
}

/// Calculates the weighted standard deviation
double weightedStdDeviation(List<double> values, List<double> weights) {
  var sum = 0.0;
  final weightedMean = weightedAverage(values, weights);
  final sumWeights = weights.reduce((value, element) => value + element);
  const epsilon = 1e-6;
  final numNonZeroWeights = weights
      .reduce((value, element) => element.abs() < epsilon ? value : value + 1);
  for (var i = 0; i < values.length; i++) {
    sum += (values[i] - weightedMean) * (values[i] - weightedMean) * weights[i];
  }
  return sqrt(sum * numNonZeroWeights / sumWeights * (numNonZeroWeights - 1));
}
