program Merge_sort;

type
    IntArray = array of Integer;

procedure merge(var arr: IntArray; left, mid, right: Integer);
var
    n1, n2, i, j, k: Integer;
    L, R: IntArray;
begin
    n1 := mid - left + 1;
    n2 := right - mid;

    SetLength(L, n1);
    SetLength(R, n2);

    for i := 0 to n1 - 1 do
        L[i] := arr[left + i];
    for j := 0 to n2 - 1 do
        R[j] := arr[mid + 1 + j];

    i := 0;
    j := 0;
    k := left;
    while (i < n1) and (j < n2) do
    begin
        if L[i] <= R[j] then
        begin
            arr[k] := L[i];
            Inc(i);
        end
        else
        begin
            arr[k] := R[j];
            Inc(j);
        end;
        Inc(k);
    end;

    while i < n1 do
    begin
        arr[k] := L[i];
        Inc(i);
        Inc(k);
    end;

    while j < n2 do
    begin
        arr[k] := R[j];
        Inc(j);
        Inc(k);
    end;
end;

procedure merge_sort(var arr: IntArray; left, right: Integer);
var
    mid: Integer;
begin
    if left < right then
    begin
        mid := (left + right) div 2;
        merge_sort(arr, left, mid);
        merge_sort(arr, mid + 1, right);
        merge(arr, left, mid, right);
    end;
end;
