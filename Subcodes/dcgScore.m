function [dcgScore] = dcgScore(yTrue,yScore,k)

    %sorted_score = zeros(yScore(1,:));
	%indices = zeros(yScore(1,:));

    for i=1:length(yScore)
        [sorted_score(i,:), indices(i,:)] = sort(yScore(i,:), 'descend');
    end
    
    %get the first k valuesk
    
    sorted_score_k = sorted_score(1:size(sorted_score(:,1),1), 1:k);
    indices_k = indices(1:size(sorted_score(:,1),1), 1:k);
    rel = false(size(indices_k));

    for i=1:size(indices_k,1)
        for j=1:k
            if(indices_k(i,j)==yTrue(i))
                rel(i,j)=1;
            end
        end
    end

    DCG = zeros(size(sorted_score_k,1),1);
    for i=1:length(DCG)
        if(find(rel(i,:)==1))
            DCG(i)=find(rel(i,:)==1);
        end
    end
    
    dcgScore=zeros(size(sorted_score_k,1),1);
    for i = 1:length(DCG)
        if(DCG(i)~=0)
            dcgScore(i)= 1./log2(DCG(i)+1);
        end
    end
    
           
end
