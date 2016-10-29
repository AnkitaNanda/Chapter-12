m_m_1 <- function(){
  
  lambda <- readline("Enter the rate of arrival of customers to the system in as unit per hour: ")
  lambda <- as.double(lambda)
  mu <- readline("Enter the average service rate as unit per hour (service rate must be greater than arrival rate): ")
  mu <- as.double(mu)
  
  roh <- (lambda / mu)
  
  sojourn_time <- 1 / (mu - lambda)
  waiting_time <- roh / (mu - lambda)
  average_customer <- roh / (1-roh)
  
  print(paste("Probability that the system is busy is:", roh))
  print(paste("Probability that the system is empty is:", 1-roh))
  print(paste("The average sojourn time of a customer in the system is:", sojourn_time))
  print(paste("The average waiting time of a customer in the queue is:", waiting_time))
  print(paste("The expected number of a customer present in the system is:", average_customer))
  
  
  n <- readline("Enter a number representing the number of customers: ")
  n <- as.integer(n)
  
  tail_probability <- (roh ^ n)
 
  print(paste("Probability that atleast", n, "customers are present in the system is:", tail_probability))
  
}
  
m_m_1()