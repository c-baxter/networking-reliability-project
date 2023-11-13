clear
numIterations = 1000;
numPackets = [1, 5, 15, 50, 100];
numColumns = size(numPackets);
simulations = zeros(99, numColumns(2));
x = 0.01:0.01:0.99;

for attempts = 1:numColumns(2)
    for probability = 1:99
        simulations(probability, attempts) = runCompoundNetworkSim(numPackets(attempts), probability/100, probability/100, probability/100, numIterations);
    end
end

figure
semilogy(x,simulations(:,1),"DisplayName","simulations");
title(strcat("K = ",num2str(numPackets(1))));
xlabel("Probability of Failure");
ylabel("Retransmissions Required");
legend

figure
semilogy(x,simulations(:,2),"DisplayName","simulations");
title(strcat("K = ",num2str(numPackets(2))));
xlabel("Probability of Failure");
ylabel("Retransmissions Required");
legend

figure
semilogy(x,simulations(:,3),"DisplayName","simulations");
title(strcat("K = ",num2str(numPackets(3))));
xlabel("Probability of Failure");
ylabel("Retransmissions Required");
legend

figure
semilogy(x,simulations(:,4),"DisplayName","simulations");
title(strcat("K = ",num2str(numPackets(4))));
xlabel("Probability of Failure");
ylabel("Retransmissions Required");
legend

figure
semilogy(x,simulations(:,5),"DisplayName","simulations");
title(strcat("K = ",num2str(numPackets(5))));
xlabel("Probability of Failure");
ylabel("Retransmissions Required");
legend

figure
semilogy(x,simulations,"DisplayName","simulations");
title("Simulated for all K")
xlabel("Probility")
ylabel("Retransmissions Required")
legend