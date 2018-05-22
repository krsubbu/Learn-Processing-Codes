size(400,400);
background(0);

String s = "10,32,91,72,55";
String[] nums = split(s,",");
printArray(nums);
int[] vals = int(nums);
for(int i=0; i<nums.length; i++){
    ellipse(i*50+100,200,vals[i],vals[i]);
}