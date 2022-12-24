file_name = "ecg.txt";
T = readtable(file_name);
raw_ecg = T.Var2;

plot(raw_ecg(50000:50500));
raw_ecg = raw_ecg(20001:end);
passed_ecg = bandpass(raw_ecg, [3 35], 200);
