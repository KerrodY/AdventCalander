var fileContents = File.ReadAllLines("Inputs/day1.txt").ToList();
var list1 = new List<int>();
var list2 = new List<int>();
var totalDistance = 0;

foreach (var line in fileContents)
{
    var splitLine = line.Split("   ").ToList();
    list1.Add(int.Parse(splitLine[0]));
    list2.Add(int.Parse(splitLine[1]));
}

list1.Sort();
list2.Sort();

foreach (var (index, item) in list1.Index())
    totalDistance += Math.Abs(item - list2[index]);

Console.WriteLine(totalDistance);
