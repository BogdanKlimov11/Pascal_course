program Selection_sort;

procedure selection_sort(var arr: array of Integer);
var
    i, j, minIndex, temp: Integer;
begin
    for i := 0 to Length(arr) - 2 do
    begin
        minIndex := i;
        for j := i + 1 to Length(arr) - 1 do
        begin
            if arr[j] < arr[minIndex] then
                minIndex := j;
        end;
        if minIndex <> i then
        begin
            temp := arr[i];
            arr[i] := arr[minIndex];
            arr[minIndex] := temp;
        end;
    end;
end;
