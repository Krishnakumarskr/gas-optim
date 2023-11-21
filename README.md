# gas-optim
Optimizatio details

1. Remove array and make all the contributors address as immutable address.
2. Make the create time immutable
3. Calculate the amount in the constructor and make it immutable.
4. Use Error instead of require.

<hr>

#### Tool used: Foundry

Gas used in old contract
| src/OldDistribute.sol:DistributeOld contract |                 |        |        |        |         |
|----------------------------------------------|-----------------|--------|--------|--------|---------|
| Deployment Cost                              | Deployment Size |        |        |        |         |
| 317832                                       | 1355            |        |        |        |         |
| Function Name                                | min             | avg    | median | max    | # calls |
| distribute                                   | 221531          | 221531 | 221531 | 221531 | 1       |

Gas used in optimized contract
| src/Distribute.sol:Distribute contract |                 |        |        |        |         |
|----------------------------------------|-----------------|--------|--------|--------|---------|
| Deployment Cost                        | Deployment Size |        |        |        |         |
| 281250                                 | 2115            |        |        |        |         |
| Function Name                          | min             | avg    | median | max    | # calls |
| distribute                             | 206746          | 206746 | 206746 | 206746 | 1       |

Total gas saved: 14,785
