% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/MizerParams-class.r
\docType{class}
\name{MizerParams-class}
\alias{MizerParams-class}
\title{A class to hold the parameters for a size based model.}
\description{
These parameters include the model species, their life history parameters and
the size ranges of the model.
}
\details{
\code{MizerParams} objects can be created using a range of
\code{MizerParams} constructor methods.

Dynamic simulations are performed using the \code{\link{project}} method on
objects of this class.
}
\section{Slots}{

\describe{
\item{\code{w}}{A numeric vector of size bins used for the community (i.e. fish) part
of the model. These are usually spaced on a log10 scale}

\item{\code{dw}}{The absolute difference between the size bins specified in the w
slot. A vector the same length as the w slot. The final value is the same
as the second to last value}

\item{\code{w_full}}{A numeric vector of size bins used for the whole model (i.e. the
community and background spectra) . These are usually spaced on a log10
scale}

\item{\code{dw_full}}{The absolute difference between the size bins specified in the
w_full slot. A vector the same length as the w_full slot. The final value
is the same as the second to last value}

\item{\code{psi}}{An array (species x size) that holds the allocation to reproduction
for each species at size}

\item{\code{intake_max}}{An array (species x size) that holds the maximum intake for
each species at size}

\item{\code{search_vol}}{An array (species x size) that holds the search volume for
each species at size}

\item{\code{activity}}{An array (species x size) that holds the activity for each
species at size}

\item{\code{std_metab}}{An array (species x size) that holds the standard metabolism
for each species at size}

\item{\code{pred_kernel}}{An array (species x predator size x prey size) that holds
the predation coefficient of each predator at size on each prey size}

\item{\code{rr_pp}}{A vector the same length as the w_full slot. The size specific
growth rate of the background spectrum}

\item{\code{cc_pp}}{A vector the same length as the w_full slot. The size specific
carrying capacity of the background spectrum}

\item{\code{species_params}}{A data.frame to hold the species specific parameters
(see the mizer vignette, Table 2, for details)}

\item{\code{interaction}}{The species specific interaction matrix.}

\item{\code{srr}}{Function to calculate the realised (density dependent) recruitment.
Has two arguments which are rdi and species_params}

\item{\code{selectivity}}{An array (gear x species x w) that holds the selectivity of
each species by gear and species size}

\item{\code{catchability}}{An array (gear x species) that holds the catchability of
each species by each gear}
}}
\note{
The \code{MizerParams} class is fairly complex with a large number of
  slots, many of which are multidimensional arrays. The dimensions of these
  arrays is strictly enforced so that \code{MizerParams} objects are
  consistent in terms of number of species and number of size classes.
  
  Although it is possible to build a \code{MizerParams} object by hand it is
  not recommended and several constructors are available.
  
  The \code{MizerParams} class does not hold any dynamic information, e.g.
  abundances or harvest effort through time. These are held in
  \code{\link{MizerSim}} objects.
}
\seealso{
\code{\link{project}} \code{\link{MizerSim}}
}

