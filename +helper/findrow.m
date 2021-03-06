%  IT2-FLS Toolbox is free software: you can redistribute it and/or modify
%     it under the terms of the GNU General Public License as published by
%     the Free Software Foundation, either version 3 of the License, or
%     (at your option) any later version.
% 
%     IT2-FLS Toolbox is distributed in the hope that it will be useful,
%     but WITHOUT ANY WARRANTY; without even the implied warranty of
%     MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
%     GNU General Public License for more details.
% 
%     You should have received a copy of the GNU General Public License
%     along with IT2-FLS Toolbox.  If not, see <http://www.gnu.org/licenses/>.
function rowNum=findrow(str,strMat)
% Remove leading and trailing blanks form STR
str = strtrim(str);

% Initialize boolean vector that picks matching rows
nrows = size(strMat,1);
IsMatching = zeros(1,nrows);

% Process each row
for ctrow=1:nrows,
   % Remove leading and trailing blanks
   s = strtrim(char(strMat(ctrow,:))); 
   IsMatching(ctrow) = strcmp(str,s);
end

rowNum = find(IsMatching);