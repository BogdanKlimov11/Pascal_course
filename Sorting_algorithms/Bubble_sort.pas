type
  TArray = array of Integer;

procedure bubble_sort(var arr: TArray);
var
  n, i, j, temp: Integer;
  swapped: Boolean;
begin
  n := Length(arr);
  // Проходим по всем элементам массива
  for i := 0 to n - 1 do
  begin
    // Установим флаг, который будет служить индикатором, были ли какие-либо обмены в этой итерации
    swapped := False;
    // Проходим по массиву сравнивая каждую пару соседних элементов
    // и меняем их местами, если они находятся в неправильном порядке
    for j := 0 to n - i - 2 do
    begin
      if arr[j] > arr[j + 1] then
      begin
        // Обмен значениями
        temp := arr[j];
        arr[j] := arr[j + 1];
        arr[j + 1] := temp;
        swapped := True;
      end;
    end;
    // Если в этой итерации не было ни одного обмена, то массив уже отсортирован
    if not swapped then
      Break;
  end;
end;
