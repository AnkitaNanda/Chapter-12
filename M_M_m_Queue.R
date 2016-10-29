m_m_m <- function(){
  
  lambda <- readline("Enter the rate of arrival of customers to the system in as unit per hour: ")
  lambda <- as.double(lambda)
  mu <- readline("Enter the average service rate as unit per hour (service rate must be greater than arrival rate): ")
  mu <- as.double(mu)
  m <-  readline("Enter the number of parallel servers present in the system: ")
  m <- as.integer(m)
  
  roh <- (lambda / mu)
  
  first_term <- 0
  i <- 0
  
  for(i in 0:(m-1)){
    
    first_term <- first_term + (((m * roh) ^ i) / factorial(i) )
    i <- i+1
    
  }
  
  second_term <- (((m * roh) ^ m)) / (factorial(m) * (1 - roh))
  pi_o <- 1 / (first_term + second_term)
  prob_wait <- (pi_o * ( (m * roh)^ m)) / (factorial(m) * (1 - roh))
  mean_length <- prob_wait * roh / (1 - roh)
  mean_wait <- (prob_wait / ((m * mu) - lambda))
  mean_sojourn <- (mean_wait + (1 / mu))
  
  print(paste("Probability that the system is empty is:", pi_o))
  print(paste("Mean length of the queue is:", mean_length))
  print(paste("Probability that upon arrival, a customer has to wait for service is:", prob_wait))
  print(paste("Mean waiting time in the queue is:", mean_wait))
  print(paste("Mean sojourn time in the system is:", mean_sojourn))
    
   
  
}

m_m_m()