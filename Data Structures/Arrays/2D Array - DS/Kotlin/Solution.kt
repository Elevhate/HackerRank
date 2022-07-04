    import java.io.*
    import java.math.*
    import java.security.*
    import java.text.*
    import java.util.*
    import java.util.concurrent.*
    import java.util.function.*
    import java.util.regex.*
    import java.util.stream.*
    import kotlin.collections.*
    import kotlin.comparisons.*
    import kotlin.io.*
    import kotlin.jvm.*
    import kotlin.jvm.functions.*
    import kotlin.jvm.internal.*
    import kotlin.ranges.*
    import kotlin.sequences.*
    import kotlin.text.*

    /*
    * Complete the 'hourglassSum' function below.
    *
    * The function is expected to return an INTEGER.
    * The function accepts 2D_INTEGER_ARRAY arr as parameter.
    */

    fun hourglassSum(arr: Array<Array<Int>>): Int {
        var sumArray = ArrayList<Int>();
        var sum: Int;

        for (i in 0..arr.size) {
            for (j in 0..arr.size) {
                if (!(i + 3 > arr.size) && !(j + 3 > arr.size)) {
                    sum = arr[i][j] + arr[i][j + 1] + arr[i][j + 2] + arr[i + 1][j + 1] + arr[i + 2][j] + arr[i + 2][j + 1] + arr[i + 2][j + 2];
                    sumArray.add(sum);
                }
            }
        }

        return sumArray.max()!!;
    }

    fun main(args: Array<String>) {

        val arr = Array<Array<Int>>(6, { Array<Int>(6, { 0 }) })

        for (i in 0 until 6) {
            arr[i] = readLine()!!.trimEnd().split(" ").map{ it.toInt() }.toTypedArray()
        }

        val result = hourglassSum(arr)

        println(result)
    }
