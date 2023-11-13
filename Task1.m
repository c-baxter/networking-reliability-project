clear
numIterations = 1000;
numPackets = [1, 5, 15, 50, 100];
numColumns = size(numPackets);
simulations = zeros(99, numColumns(2));
calculations = zeros(99, numColumns(2));
x = 0.01:0.01:0.99;

for attempts = 1:numColumns(2)
    for probability = 1:99
        simulations(probability, attempts) = runSingleLinkSim(numPackets(attempts), probability/100, numIterations);
        calculations(probability, attempts) = numPackets(attempts)/(1-(probability/100));
    end
end

figure
semilogy(x,simulations(:,1),"DisplayName","simulations");

hold on
semilogy(x,calculations(:,1),"DisplayName","calculations");
hold off

title(strcat("K = ",num2str(numPackets(1))));
xlabel("Probability of Failure");
ylabel("Retransmissions Required");
legend

figure
semilogy(x,simulations(:,2),"DisplayName","simulations");

hold on
semilogy(x,calculations(:,2),"DisplayName","calculations");
hold off

title(strcat("K = ",num2str(numPackets(2))));
xlabel("Probability of Failure");
ylabel("Retransmissions Required");
legend

figure
semilogy(x,simulations(:,3),"DisplayName","simulations");

hold on
semilogy(x,calculations(:,3),"DisplayName","calculations");
hold off

title(strcat("K = ",num2str(numPackets(3))));
xlabel("Probability of Failure");
ylabel("Retransmissions Required");
legend

figure
semilogy(x,simulations(:,4),"DisplayName","simulations");

hold on
semilogy(x,calculations(:,4),"DisplayName","calculations");
hold off

title(strcat("K = ",num2str(numPackets(4))));
xlabel("Probability of Failure");
ylabel("Retransmissions Required");
legend

figure
semilogy(x,simulations(:,5),"DisplayName","simulations");

hold on
semilogy(x,calculations(:,5),"DisplayName","calculations");
hold off

title(strcat("K = ",num2str(numPackets(5))));
xlabel("Probability of Failure");
ylabel("Retransmissions Required");
legend

figure
semilogy(x,simulations,"DisplayName","simulations");

hold on
semilogy(x,calculations,"LineStyle",":","DisplayName","calculations");
hold off

title("Simulated Vs. Calculated for all K")
xlabel("Probility")
ylabel("Retransmissions Required")
legend