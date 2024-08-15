function[allDurations,medDuration,meanDuration] = calculateStallDuration(StallingMatrix)


 [numCaps,numFrames] = size(StallingMatrix);
 allDurations = cell(numCaps,1);
 medDuration = zeros(numCaps,1);
 meanDuration = zeros(numCaps,1);
    for r = 1:numCaps
       currSeg = [0,StallingMatrix(r,:)];
       [p,loc,widths] = findpeaks(currSeg);
       allDurations(r,1) = {widths};
       medDuration(r,1) = median(widths);     
       meanDuration(r,1) = mean(widths);
    end
end