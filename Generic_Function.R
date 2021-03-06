#' @name %%-methods
#' @title Extract Image Attribute \code{%%}
#' @docType methods 
#' @param object is an object of class \code{nifti} or \code{anlz}.
#' @param value is the value to assign to the \code{%ff%} field.  
#' @description Methods that act on the \code{%ff%} field in the
#' NIfTI/ANALYZE header.
#' @rdname %ff%-methods
#' @aliases %%-methods, %%
#' @details See documentation on the ANALYZE and/or NIfTI data standards for
#' more details.
#' @author John Muschelli \email{muschellij2@@gmail.com},\cr
#' Brandon Whitcher \email{bwhitcher@@gmail.com}
#' @references
#' ANALYZE 7.5\cr
#' \url{https://rportal.mayo.edu/bir/ANALYZE75.pdf}\cr
#' NIfTI-1\cr
#' \url{http://nifti.nimh.nih.gov/}
%example%
#' @export
setGeneric("%%", function(object) standardGeneric("%%"))
