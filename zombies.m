function dydt = zombies(t,y)
p = 0.347;
population = 50000;
sigma = 1/11.4;
gamma = 1/3.9;
f = 1;
betaT = 2.72e-8 + exp(-.011 * (t - 51)) * (8.647e-8 - 2.72e-8);
dydt = zeros(4, 1);
dydt(1) = betaT * y(1) * y(3) - p * y(4) * y(1) / (population);
dydt(2) = betaT * y(1) * y(3) + p * y(4) * y(1) / (population);
dydt(3) = sigma * y(2) - gamma * y(3);
dydt(4) = f * gamma * y(3);
end

