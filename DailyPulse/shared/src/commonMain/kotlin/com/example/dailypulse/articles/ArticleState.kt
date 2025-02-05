package com.example.dailypulse.articles

sealed class ArticleState(
    val article: List<Article> = listOf(),
    val loading: Boolean = false,
    val error: String? = null
) {
    data class Success(val articles: List<Article>) : ArticleState(article = articles, loading = false, error = null)
    data class Loading(val isLoading: Boolean) : ArticleState(loading = true, error = null)
    data class Error(val message: String) : ArticleState(loading = false, error = message)
}