program Bubble_sort;

type
    IntArray = array of Integer;

procedure bubble_sort(var arr: IntArray);
var
    n, i, j, temp: Integer;
    swapped: Boolean;
begin
    n := Length(arr);
    repeat
        swapped := False;
        for i := 0 to n - 2 do
        begin
            if arr[i] > arr[i + 1] then
            begin
                temp := arr[i];
                arr[i] := arr[i + 1];
                arr[i + 1] := temp;
                swapped := True;
            end;
        end;
        Dec(n);
    until not swapped;
end;
