%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%     Copyright (C) 2020  Efthymia Chantzi      %%
%%        GNU General Public license v3          %%
%%                    20-06-17                   %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% This function produces a beeping sound when COMBImageDL terminates.    %      
%                                                                        %
%                                                                        %
% %%%% Inputs %%%%                                                       %
% d: duration of the beeping sound in seconds.                           %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%=============================================================================

function BeepSound(d)

cf = 2000;                  % carrier frequency (Hz)
sf = 22050;                 % sample frequency (Hz)
                            % d: duration (s)
n = sf*d;                   % number of samples
s = (1 : n)/sf;             % sound data preparation
s = sin(2*pi*cf*s);         % sinusoidal modulation
sound(s, sf);               % sound presentation
pause(d + 0.5);             % waiting for sound end

end

%==============================================================================

