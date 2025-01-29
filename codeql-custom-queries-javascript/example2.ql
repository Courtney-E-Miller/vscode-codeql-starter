/**
 * This is an automatically generated file
 * @name Hello world
 * @kind problem
 * @problem.severity warning
 * @id javascript/example/hello-world
 */

// Write a CodeQL JavaScript query to calculate the number of times each dependency is used in the repository.
// The query should output the dependency name and the count of its usage.
// optimizing the dependency management and identifying potential candidates for removal.
// each dependency is used in the repository
import javascript

/**
 * This query counts the number of times the dependency 'puppeteer' is imported in the codebase.
 */

// Define the dependency name
predicate dependencyName() {
  result = "puppeteer"
}

where import.getImportedModule().getName() = dependencyName()
from ImportDeclaration import
where import.getImportedModule().getName() = dependencyName
select dependencyName, count(import)