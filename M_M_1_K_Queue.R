m_m_1_k <- function(){
  
  lambda <- readline("Enter the rate of arrival of customers to the system in as unit per hour: ")
  lambda <- as.double(lambda)
  mu <- readline("Enter the average service rate as unit per hour (service rate must be greater than arrival rate): ")
  mu <- as.double(mu)
  k <- readline("Enter the maximum number of permitted customers in the system: ")
  k <- as.integer(k)
  
  roh <- (lambda / mu)
  pi_o <- (1 - roh)/ (1 - (roh ^ (k+1)))
  pi_k <- (1 - roh) * (roh ^ k)/ (1 - (roh ^ (k+1)))
  
  n <- readline(paste("Enter a number representing the number of customers (number must be less than or equal to",k, ") : "))
  n <- as.integer(n)
  pi_n <- ((1 - roh) * (roh ^ n)) / (1 - (roh ^ (k+1)))
  
  print(paste("Probability of finding",n, "customers in the system is:", pi_n))
  print(paste("Probability that the system is full is:", pi_k))
  print(paste("Probability that the system is empty is:", pi_o))
  
  
  
  
  
}

m_m_1_k()