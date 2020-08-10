plot(seq(-3, 3, 0.1), dnorm(seq(-3, 3, 0.1)),
     type = "l", xlab = "$x$", ylab = "$\\phi(x)$")
text(-3, 0.37, adj = c(0, 1),
     "$\\phi(x) = \\frac{1}{\\sqrt{2 \\pi}} \\exp(-\\frac{x^2}{2})$", cex = 1.2)
arrows(-2, 0.27, -1.3, dnorm(-1.3) + 0.02)
abline(v = qnorm(0.95), lty = 2)
text(0, dnorm(qnorm(0.95)),
     "$\\int_{-\\infty}^{1.65} \\phi(x) dx \\approx 0.95$")
