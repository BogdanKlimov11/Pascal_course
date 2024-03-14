procedure insertion_sort(var arr: array of Integer);
var
    i, j, key: Integer;
begin
    for i := 1 to Length(arr) - 1 do
    begin
        key := arr[i];
        j := i - 1;

        while (j >= 0) and (arr[j] > key) do
        begin
            arr[j + 1] := arr[j];
            j := j - 1;
        end;
        arr[j + 1] := key;
    end;
end;
