%% Data 
clc, clear, clf 

% ---------- CIFAR10 ----------

% ----- Average -----
baseLearnersCIFAR10_Avg = 2:43;
fileID = fopen('CIFAR10_average_accuracies.txt');
testAccuracyCIFAR10_Average = fscanf(fileID,'%f');
fclose(fileID);
testAccuracyCIFAR10_Average(testAccuracyCIFAR10_Average == 0) = [];
        
% ----- Max voting -----      
baseLearnersCIFAR10_MaxVoting = 2:46;
fileID = fopen('CIFAR10_max_voting_accuracies.txt');
testAccuracyCIFAR10_MaxVoting = fscanf(fileID,'%f');
fclose(fileID);
testAccuracyCIFAR10_MaxVoting(testAccuracyCIFAR10_MaxVoting == 0) = [];

% ----- Basic stacking ----- 
baseLearnersCIFAR10_basicStacking = [2 5 10 15 20 25 30 35 40 45];
fileID = fopen('CIFAR10_basic_stacking_accuracies.txt');
testAccuracyCIFAR10_basicStacking = fscanf(fileID,'%f');
fclose(fileID);
testAccuracyCIFAR10_basicStacking(testAccuracyCIFAR10_basicStacking == 0) = [];
  
% ----- Small stacking -----
baseLearnersCIFAR10_smallStacking=[2 5 10 15 20 25 30 35 40 45];
fileID = fopen('CIFAR10_small_stacking_accuracies.txt');
testAccuracyCIFAR10_smallStacking = fscanf(fileID,'%f');
fclose(fileID);
testAccuracyCIFAR10_smallStacking(testAccuracyCIFAR10_smallStacking == 0) = [];

% ---------- CIFAR100 ----------

% ----- Average -----
baseLearnersCIFAR100_Avg = 2:46;
fileID = fopen('CIFAR100_average_accuracies.txt');
testAccuracyCIFAR100_Average = fscanf(fileID,'%f');
fclose(fileID);
testAccuracyCIFAR100_Average(testAccuracyCIFAR100_Average == 0) = [];
        
% ----- Max voting -----      
baseLearnersCIFAR100_MaxVoting = 2:46;
fileID = fopen('CIFAR100_max_voting_accuracies.txt');
testAccuracyCIFAR100_MaxVoting = fscanf(fileID,'%f');
fclose(fileID);
testAccuracyCIFAR100_MaxVoting(testAccuracyCIFAR100_MaxVoting == 0) = [];

% ----- Basic stacking ----- 
baseLearnersCIFAR100_basicStacking = [2 5 10 15 20 25 30 35 40 45];
fileID = fopen('CIFAR100_basic_stacking_accuracies.txt');
testAccuracyCIFAR100_basicStacking = fscanf(fileID,'%f');
fclose(fileID);
testAccuracyCIFAR100_basicStacking(testAccuracyCIFAR100_basicStacking == 0) = [];
  
% ----- Small stacking -----
baseLearnersCIFAR100_smallStacking=[2 5 10 15 20 25 30 35 40 45];
fileID = fopen('CIFAR100_small_stacking_accuracies.txt');
testAccuracyCIFAR100_smallStacking = fscanf(fileID,'%f');
fclose(fileID);
testAccuracyCIFAR100_smallStacking(testAccuracyCIFAR100_smallStacking == 0) = [];

% ---------- FR ----------

% ----- Average -----
baseLearnersFR_Avg = 2:20;
fileID = fopen('FR_average_accuracies.txt');
testAccuracyFR_Average = fscanf(fileID,'%f');
fclose(fileID);
testAccuracyFR_Average(testAccuracyFR_Average == 0) = [];
        
% ----- Max voting -----      
baseLearnersFR_MaxVoting = 2:20;
fileID = fopen('FR_max_voting_accuracies.txt');
testAccuracyFR_MaxVoting = fscanf(fileID,'%f');
fclose(fileID);
testAccuracyFR_MaxVoting(testAccuracyFR_MaxVoting == 0) = [];

% ----- Basic stacking ----- 
baseLearnersFR_basicStacking = [2 5 10 15 20];
fileID = fopen('FR_basic_stacking_accuracies.txt');
testAccuracyFR_basicStacking = fscanf(fileID,'%f');
fclose(fileID);
testAccuracyFR_basicStacking(testAccuracyFR_basicStacking == 0) = [];
  
% ----- Small stacking -----
baseLearnersFR_smallStacking=[2 5 10 15 20];
fileID = fopen('FR_small_stacking_accuracies.txt');
testAccuracyFR_smallStacking = fscanf(fileID,'%f');
fclose(fileID);
testAccuracyFR_smallStacking(testAccuracyFR_smallStacking == 0) = [];


%% Plot CIFAR10
clf

hold on
graph1 = plot(baseLearnersCIFAR10_Avg, testAccuracyCIFAR10_Average,'-d');
graph2 = plot(baseLearnersCIFAR10_MaxVoting, testAccuracyCIFAR10_MaxVoting,'-o');
graph3 = plot(baseLearnersCIFAR10_basicStacking, testAccuracyCIFAR10_basicStacking,'-s');
graph4 = plot(baseLearnersCIFAR10_smallStacking,testAccuracyCIFAR10_smallStacking,'-<');
hold off
xlabel('Number of base learners', 'FontSize', 14)
ylabel('Test accuracy', 'FontSize', 14)
axis([0 50 0.6 0.85])
grid on
%set(graph1,'LineWidth',2);
%set(graph2,'LineWidth',2);
%set(graph3,'LineWidth',2)
legend('Average', 'Max voting', 'Linear stacking','Nonlinear stacking','Location','Southeast')
title('Bagging performance CIFAR10', 'FontSize', 16)

%% Plot CIFAR100
clf

hold on
graph1 = plot(baseLearnersCIFAR100_Avg, testAccuracyCIFAR100_Average,'-d');
graph2 = plot(baseLearnersCIFAR100_MaxVoting, testAccuracyCIFAR100_MaxVoting,'-o');
graph3 = plot(baseLearnersCIFAR100_basicStacking, testAccuracyCIFAR100_basicStacking,'-s');
graph4 = plot(baseLearnersCIFAR100_smallStacking,testAccuracyCIFAR100_smallStacking,'-<');
hold off
xlabel('Number of base learners', 'FontSize', 14)
ylabel('Test accuracy', 'FontSize', 14)
axis([0 50 0.3 0.55])
grid on
%set(graph1,'LineWidth',2);
%set(graph2,'LineWidth',2);
%set(graph3,'LineWidth',2)
legend('Average', 'Max voting', 'Linear stacking','Nonlinear stacking','Location','Southeast')
title('Bagging performance CIFAR100', 'FontSize', 16)

%% Plot FR
clf

hold on
graph1 = plot(baseLearnersFR_Avg, testAccuracyFR_Average,'-d');
graph2 = plot(baseLearnersFR_MaxVoting, testAccuracyFR_MaxVoting,'-o');
graph3 = plot(baseLearnersFR_basicStacking, testAccuracyFR_basicStacking,'-s');
graph4 = plot(baseLearnersFR_smallStacking,testAccuracyFR_smallStacking,'-<');
hold off
xlabel('Number of base learners', 'FontSize', 14)
ylabel('Test accuracy', 'FontSize', 14)
axis([0 22 0.6 0.85])
grid on
%set(graph1,'LineWidth',2);
%set(graph2,'LineWidth',2);
%set(graph3,'LineWidth',2)
legend('Average', 'Max voting', 'Linear stacking','Nonlinear stacking','Location','Northeast')
title('Bagging performance Flower Recognition', 'FontSize', 16)