proc findSpan(n, p: int, u: float, U: seq[float]): int =
  var
    low, high, mid: int
    result = -1  # Define result variable with a default value

  if u == U[n + 1]:
    return n

  low = p
  high = n + 1
  mid = (low + high) div 2

  while u < U[mid] or u >= U[mid + 1]:
    if u < U[mid]:
      high = mid
    else:
      low = mid

    mid = (low + high) div 2

  result = mid
  result  # Return the result at the end of procedure

proc main() =
  let n = 8
  let p = 4
  let u = 8.5
  let U: seq[float] = @[0.1, 1.6, 2.9, 3.0, 4.5, 5.1, 7.0]

  let result = findSpan(n, p, u, U)

  echo "Resultado de findSpan:", result

main()