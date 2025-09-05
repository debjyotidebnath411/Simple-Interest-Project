#!/usr/bin/env bash
# Usage: ./simple-interest.sh PRINCIPAL RATE TIME
# RATE is annual percent; TIME in years.
# Example: ./simple-interest.sh 1000 5 2

if [ "$#" -ne 3 ]; then
  echo "Usage: $0 PRINCIPAL RATE TIME"
  exit 1
fi

P="$1"
R="$2"
T="$3"

# Calculate SI and total using awk for floating point
SI=$(awk "BEGIN { printf \"%.2f\", ($P * $R * $T) / 100 }")
AMT=$(awk "BEGIN { printf \"%.2f\", $P + (($P * $R * $T) / 100) }")

echo "Simple Interest: $SI"
echo "Amount: $AMT"
