object CollatzCalculator {
    fun computeStepCount(start: Int): Int {
        // 1. Validamos que el número sea positivo
        require(start > 0) { "Only natural numbers are allowed" }

        // 2. Definimos cómo calcular el "siguiente número" de forma muy clara
        val nextNumberFormula = { n: Long ->
            val isEven = (n % 2 == 0L)

            if (isEven) {
                n / 2
            } else {
                (3 * n) + 1
            }
        }

        // 3. Creamos la secuencia usando la fórmula anterior
        val sequence = generateSequence(start.toLong(), nextNumberFormula)


        // 4. Le decimos que se detenga cuando llegue a 1
        val sequenceUntilReachedOne = sequence.takeWhile { it > 1 }

        // 5. Contamos los pasos y devolvemos el resultado
        return sequenceUntilReachedOne.count()
    }
}

/* //Others ways using Kotlin and operators

Object CollatzCalculator {
    fun computeStepCount(start: Int): Int {
        require(start > 0) { "Only natural numbers are allowed" }
        var n = start.toLong() // Use Long to avoid overflow during calculation
        var steps = 0
        while (n > 1) {
            if (n % 2 == 0L) n /= 2 else n = 3 * n + 1
            steps++
        }
        return steps
    }

    fun computeStepCountKotlinIdiomatic(start: Int): Int {
        require(start > 0) { "Only natural numbers are allowed" }
        return generateSequence(start.toLong()) { n ->
            if (n % 2 == 0L) n / 2 else 3 * n + 1
        }.takeWhile { it > 1L }.count()
    }
 */