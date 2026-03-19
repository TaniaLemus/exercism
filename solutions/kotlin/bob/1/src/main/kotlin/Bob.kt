object Bob {
    fun hey(input: String): String {
        val s = input.trim()
        val isSilence = s.isEmpty()
        val isAsking = s.endsWith('?')
        val isShouting = s.any { it.isLetter() } && s.uppercase() == s

        return when {
            isSilence -> "Fine. Be that way!"
            isAsking && isShouting -> "Calm down, I know what I'm doing!"
            isAsking -> "Sure."
            isShouting -> "Whoa, chill out!"
            else -> "Whatever."
        }
    }
}
