% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Features.R
\name{Feature_Computation}
\alias{Feature_Computation}
\alias{Features_PeptDesc}
\alias{Features_CPP}
\alias{Features}
\title{Feature computation.}
\usage{
Features_PeptDesc(
  peptideSet,
  fragLenSet = 3:8,
  featureSet = NULL,
  coreN = parallel::detectCores(logical = F)
)

Features_CPP(
  peptideSet,
  fragLib,
  aaIndexIDSet = "all",
  fragLenSet = 3:8,
  fragDepth = 10000,
  fragLibType = c("Deduplicated", "Weighted", "Mock"),
  featureSet = NULL,
  seedSet = 1:5,
  coreN = parallel::detectCores(logical = F),
  tmpDir = file.path(tempdir(), "FeatureDF", format(Sys.time(),
    "\%Y.\%m.\%d.\%H.\%M.\%S"))
)

Features(
  peptideSet,
  fragLib,
  aaIndexIDSet = "all",
  fragLenSet = 3:8,
  fragDepth = 10000,
  fragLibType = c("Deduplicated", "Weighted", "Mock"),
  featureSet = NULL,
  seedSet = 1:5,
  coreN = parallel::detectCores(logical = F),
  tmpDir = file.path(tempdir(), "FeatureDF", format(Sys.time(),
    "\%Y.\%m.\%d.\%H.\%M.\%S"))
)
}
\arguments{
\item{peptideSet}{A set of peptide sequences.}

\item{fragLenSet}{A set of sliding window sizes.}

\item{featureSet}{A minimum set of features. Combinations of fragment lengths and AAIndex IDs are internally extracted for calculating CPPs.}

\item{coreN}{The number of cores to be used for parallelization.}

\item{fragLib}{Either the dataframe of fragment libraries generated by \code{CPP_FragmentLibrary} or the path to the fst file.}

\item{aaIndexIDSet}{A set of AAIndex IDs indicating the AACP scales to be used. Set "all" to shortcut the selection of all available AACP scales.}

\item{fragDepth}{A fragment library size. Must be an integer vector of length one.}

\item{fragLibType}{A string indicating the types of fragment libraries to be used. Must be a character vector of length one.}

\item{seedSet}{A set of random seeds.}

\item{tmpDir}{Destination directory to save intermediate files.}
}
\description{
\code{Features_PeptDesc} computes peptide descriptors.\cr
\code{Features_CPP} computes descriptive statistics of TCR repertoire-wide contact potential distributions.\cr
\code{Features} is a wrapper function.
}
