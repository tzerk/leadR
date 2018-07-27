#' Sediment Deposition and Accumulation Rates Determined by 210Pb Isotope Methods
#'
#' A minimal package to estimate the sedimentation rate of a soil profile
#' using a 'Constant Flux Constant Sedimentation Rate' model applied to measured
#' 210Pb activity.
#'
#' @name leadR-package
#' @aliases leadR-package
#' @docType package
#' @author Christoph Burow (University of Cologne, Germany)
#' @keywords package
#'
#' @importFrom graphics axis legend mtext par plot points
#' @importFrom stats coef formula predict
#' @importFrom utils capture.output modifyList
NULL


#' Synthetic 210Pb Activity Data
#'
#' A synthetic data set of 210Pb activity per units of depth below surface. See
#' example on how the data was generated.
#'
#' @name Pb
#' @docType data
#' @format A [`data.frame`] with two with two columns:
#' \tabular{ll}{
#' `$depth` \tab depth below surface (cm) \cr
#' `$activity` \tab 210Pb activity (Bq/kg) \cr
#' }
#'
#'
#' @keywords datasets
#'
#' @examples
#' ## How the data was generated
#' # a0 = 100 Bq/kg
#' # s = 0.5 cm/a
#' Pb <- data.frame(depth = seq(0, 30, length.out = 20),
#'                  activity = jitter(
#'                     100 * exp(-0.03114 / 0.5 * seq(0, 30, length.out = 20)),
#'                     factor = 15))
#'
#' ## Use example data
#' data(Pb, envir = environment())
#' r <- calc_SedimentationRate(x = Pb)
#'
#' @md
NULL
