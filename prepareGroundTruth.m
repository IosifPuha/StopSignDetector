% Load the ground-truth
load gTruth.mat
% Change this to the path where the images are located on your machine
newPrefix = 'PATH-TO-DIRECTORY\stopSignImages\';
currentPaths = gTruth.imageFilename;
newPaths = cell(size(currentPaths));
for i = 1:length(currentPaths)
    [~, name, ext] = fileparts(currentPaths{i});  % Estrai il nome del file e l'estensione
    newPaths{i} = fullfile(newPrefix, [name, ext]);  % Costruisci il nuovo percorso
end
gTruth.imageFilename = newPaths;
save('gTruth.mat', 'gTruth');
