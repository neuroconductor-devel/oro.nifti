## R CMD check results

0 errors | 0 warnings | 1 note

* This is a new release.
--- 
Hotfix: This addresses a *different* length 1 condition warning that was a bug in the `image` function.  This bug affected this package and `neurobase` passing checks, a test has been added to make sure this function doesn't have the issue in the future.  Reverse dependency checks needed when `neurobase` passes.
