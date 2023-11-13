clear
numIterations = 1000;
numPackets = [1, 5, 10];
numColumns = size(numPackets);
simulation1 = zeros(99, numColumns(2));
simulation2 = zeros(99, numColumns(2));
simulation3 = zeros(99, numColumns(2));
simulation4 = zeros(99, numColumns(2));
simulation5 = zeros(99, numColumns(2));
simulation6 = zeros(99, numColumns(2));
x = 0.01:0.01:0.99;

for attempts = 1:numColumns(2)
    for probability = 1:99
        simulation1(probability, attempts) = runCompoundNetworkSim(numPackets(attempts), probability/100, probability/100, probability/100, numIterations);
    end
end

for attempts = 1:numColumns(2)
    for probability = 1:99
        simulation1(probability, attempts) = runCompoundNetworkSim(numPackets(attempts), 0.1, 0.6, probability/100, numIterations);
    end
end
figure
semilogy(x,simulation1,"DisplayName","simulations");
title("Figure 1");
xlabel("Probability of Failure");
ylabel("Retransmissions Required");
legend

for attempts = 1:numColumns(2)
    for probability = 1:99
        simulation2(probability, attempts) = runCompoundNetworkSim(numPackets(attempts), 0.6, 0.1, probability/100, numIterations);
    end
end
figure
semilogy(x,simulation2,"DisplayName","simulations");
title("Figure 2");
xlabel("Probability of Failure");
ylabel("Retransmissions Required");
legend

for attempts = 1:numColumns(2)
    for probability = 1:99
        simulation3(probability, attempts) = runCompoundNetworkSim(numPackets(attempts), 0.1, probability/100, 0.6, numIterations);
    end
end
figure
semilogy(x,simulation3,"DisplayName","simulations");
title("Figure 3");
xlabel("Probability of Failure");
ylabel("Retransmissions Required");
legend

for attempts = 1:numColumns(2)
    for probability = 1:99
        simulation4(probability, attempts) = runCompoundNetworkSim(numPackets(attempts), 0.6, probability/100, 0.1, numIterations);
    end
end
figure
semilogy(x,simulation4,"DisplayName","simulations");
title("Figure 4");
xlabel("Probability of Failure");
ylabel("Retransmissions Required");
legend

for attempts = 1:numColumns(2)
    for probability = 1:99
        simulation5(probability, attempts) = runCompoundNetworkSim(numPackets(attempts), probability/100, 0.1, 0.6, numIterations);
    end
end
figure
semilogy(x,simulation5,"DisplayName","simulations");
title("Figure 5");
xlabel("Probability of Failure");
ylabel("Retransmissions Required");
legend

for attempts = 1:numColumns(2)
    for probability = 1:99
        simulation6(probability, attempts) = runCompoundNetworkSim(numPackets(attempts), probability/100, 0.6, 0.1, numIterations);
    end
end
figure
semilogy(x,simulation6,"DisplayName","simulations");
title("Figure 6");
xlabel("Probility")
ylabel("Retransmissions Required")
legend