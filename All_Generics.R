##' @title Subset a nifti
##'
##' @description Returns a subsetted nifti
##' @param x nifti
##' @param i boolean or integer index
##' @param j boolean or integer index
##' @param ... boolean or integer index
##' @param drop Drop 1-dim elements
##' @return nifti, matrix or array
##' @export
#' @aliases [,nifti,missing,missing,ANY-method
#' @aliases [,nifti,missing,missing-method
#' @aliases [,nifti-method
setMethod ("[", signature(x="nifti", i="missing", j="missing", "ANY"),
           function(x, i , j, ..., drop = TRUE) {
             ## list(...) doesn't work in this S4 method dispatch framework we
             ## are using the following trick: the current call is evaluated,
             ## but using x@.Data instead of x in the previous calling frame
             # taken from EBImage
             sc = sys.call()
             args = as.list(sc[-c(1L, 2L)])
             numIndices = length(args) - !is.null(args$drop)
             
             # when subsetting with single index treat as array
             if (numIndices == 1L) {
               callNextMethod()
             } else {
               # subset image array without dropping dimensions in order to
               # preserve spatial dimensions
               sc$drop = FALSE
               sc[[2L]] = call('slot', sc[[2L]], '.Data')
               y = eval.parent(sc)
#                y = eval.parent(sc)
#                print(class(y))
#                print(class(x))
               x@.Data = y
               x = cal_img(x)
               y = zero_trans(x)
#                y = as.nifti(y, x)                
               if (drop){
                 x = drop_img_dim(x, onlylast = FALSE, warn=FALSE)
               }             
#                x = y
#                # drop dims higher than 2 unless 'drop' explicitly set to FALSE
#                if(!isTRUE(args$drop==FALSE) && length( (d = dim(y)) ) > 2L){
#                  dims = which(d==1L)
#                  y = adrop(y, drop = dims[dims>2L]) 
#                }
#                
#                x@.Data = y
#                validObject(x)
               x
             }
           })

