/**
 * @name Empty block
 * @kind problem
 * @problem.severity warning
 * @id javascript/example/empty-block
 */

 import javascript

/**
 * This query counts how many times each dependency is called in the codebase.
 */

// Get the dependencies from package.json
class Dependency extends string {
    Dependency() { this = getDependencies().getADependency(_, _) }
  }
  
  // Predicate to get dependencies from package.json
  predicate getDependencies() {
    exists(PackageJson packageJson |
      packageJson.getDependencies().getADependency(this, _) or
      packageJson.getDevDependencies().getADependency(this, _)
    )
  }
  
  // Count the number of times each dependency is called
  from CallExpr call, Dependency dep
  where call.getCallee().getPackage().getName() = dep
  select dep, count(call)