.class public final Lcom/squareup/okhttp/internal/http/HttpAuthenticator;
.super Ljava/lang/Object;
.source "HttpAuthenticator.java"


# static fields
.field public static final SYSTEM_DEFAULT:Lcom/squareup/okhttp/OkAuthenticator;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 38
    new-instance v0, Lcom/squareup/okhttp/internal/http/HttpAuthenticator$1;

    invoke-direct {v0}, Lcom/squareup/okhttp/internal/http/HttpAuthenticator$1;-><init>()V

    sput-object v0, Lcom/squareup/okhttp/internal/http/HttpAuthenticator;->SYSTEM_DEFAULT:Lcom/squareup/okhttp/OkAuthenticator;

    return-void
.end method

.method private static parseChallenges(Lcom/squareup/okhttp/internal/http/RawHeaders;Ljava/lang/String;)Ljava/util/List;
    .registers 13
    .param p0, "responseHeaders"    # Lcom/squareup/okhttp/internal/http/RawHeaders;
    .param p1, "challengeHeader"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/okhttp/internal/http/RawHeaders;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/squareup/okhttp/OkAuthenticator$Challenge;",
            ">;"
        }
    .end annotation

    .prologue
    .line 123
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 124
    .local v4, "result":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/OkAuthenticator$Challenge;>;"
    const/4 v0, 0x0

    .local v0, "h":I
    :goto_6
    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/http/RawHeaders;->length()I

    move-result v8

    if-ge v0, v8, :cond_75

    .line 125
    invoke-virtual {p0, v0}, Lcom/squareup/okhttp/internal/http/RawHeaders;->getFieldName(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_19

    .line 124
    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 128
    :cond_19
    invoke-virtual {p0, v0}, Lcom/squareup/okhttp/internal/http/RawHeaders;->getValue(I)Ljava/lang/String;

    move-result-object v7

    .line 129
    .local v7, "value":Ljava/lang/String;
    const/4 v1, 0x0

    .line 130
    .local v1, "pos":I
    :goto_1e
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v1, v8, :cond_16

    .line 131
    move v6, v1

    .line 132
    .local v6, "tokenStart":I
    const-string/jumbo v8, " "

    invoke-static {v7, v1, v8}, Lcom/squareup/okhttp/internal/http/HeaderParser;->skipUntil(Ljava/lang/String;ILjava/lang/String;)I

    move-result v1

    .line 134
    invoke-virtual {v7, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 135
    .local v5, "scheme":Ljava/lang/String;
    invoke-static {v7, v1}, Lcom/squareup/okhttp/internal/http/HeaderParser;->skipWhitespace(Ljava/lang/String;I)I

    move-result v1

    .line 141
    const-string/jumbo v8, "realm=\""

    const/4 v9, 0x0

    const-string/jumbo v10, "realm=\""

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v7, v1, v8, v9, v10}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v8

    if-eqz v8, :cond_16

    .line 145
    const-string/jumbo v8, "realm=\""

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v1, v8

    .line 146
    move v3, v1

    .line 147
    .local v3, "realmStart":I
    const-string/jumbo v8, "\""

    invoke-static {v7, v1, v8}, Lcom/squareup/okhttp/internal/http/HeaderParser;->skipUntil(Ljava/lang/String;ILjava/lang/String;)I

    move-result v1

    .line 148
    invoke-virtual {v7, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 149
    .local v2, "realm":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    .line 150
    const-string/jumbo v8, ","

    invoke-static {v7, v1, v8}, Lcom/squareup/okhttp/internal/http/HeaderParser;->skipUntil(Ljava/lang/String;ILjava/lang/String;)I

    move-result v1

    .line 151
    add-int/lit8 v1, v1, 0x1

    .line 152
    invoke-static {v7, v1}, Lcom/squareup/okhttp/internal/http/HeaderParser;->skipWhitespace(Ljava/lang/String;I)I

    move-result v1

    .line 153
    new-instance v8, Lcom/squareup/okhttp/OkAuthenticator$Challenge;

    invoke-direct {v8, v5, v2}, Lcom/squareup/okhttp/OkAuthenticator$Challenge;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    .line 156
    .end local v1    # "pos":I
    .end local v2    # "realm":Ljava/lang/String;
    .end local v3    # "realmStart":I
    .end local v5    # "scheme":Ljava/lang/String;
    .end local v6    # "tokenStart":I
    .end local v7    # "value":Ljava/lang/String;
    :cond_75
    return-object v4
.end method

.method public static processAuthHeader(Lcom/squareup/okhttp/OkAuthenticator;ILcom/squareup/okhttp/internal/http/RawHeaders;Lcom/squareup/okhttp/internal/http/RawHeaders;Ljava/net/Proxy;Ljava/net/URL;)Z
    .registers 13
    .param p0, "authenticator"    # Lcom/squareup/okhttp/OkAuthenticator;
    .param p1, "responseCode"    # I
    .param p2, "responseHeaders"    # Lcom/squareup/okhttp/internal/http/RawHeaders;
    .param p3, "successorRequestHeaders"    # Lcom/squareup/okhttp/internal/http/RawHeaders;
    .param p4, "proxy"    # Ljava/net/Proxy;
    .param p5, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x197

    const/4 v4, 0x0

    .line 88
    const/16 v5, 0x191

    if-ne p1, v5, :cond_18

    .line 89
    const-string/jumbo v3, "WWW-Authenticate"

    .line 90
    .local v3, "responseField":Ljava/lang/String;
    const-string/jumbo v2, "Authorization"

    .line 97
    .local v2, "requestField":Ljava/lang/String;
    :goto_d
    invoke-static {p2, v3}, Lcom/squareup/okhttp/internal/http/HttpAuthenticator;->parseChallenges(Lcom/squareup/okhttp/internal/http/RawHeaders;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 98
    .local v0, "challenges":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/OkAuthenticator$Challenge;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_27

    .line 109
    :cond_17
    :goto_17
    return v4

    .line 91
    .end local v0    # "challenges":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/OkAuthenticator$Challenge;>;"
    .end local v2    # "requestField":Ljava/lang/String;
    .end local v3    # "responseField":Ljava/lang/String;
    :cond_18
    if-ne p1, v6, :cond_21

    .line 92
    const-string/jumbo v3, "Proxy-Authenticate"

    .line 93
    .restart local v3    # "responseField":Ljava/lang/String;
    const-string/jumbo v2, "Proxy-Authorization"

    .restart local v2    # "requestField":Ljava/lang/String;
    goto :goto_d

    .line 95
    .end local v2    # "requestField":Ljava/lang/String;
    .end local v3    # "responseField":Ljava/lang/String;
    :cond_21
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 101
    .restart local v0    # "challenges":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/OkAuthenticator$Challenge;>;"
    .restart local v2    # "requestField":Ljava/lang/String;
    .restart local v3    # "responseField":Ljava/lang/String;
    :cond_27
    invoke-virtual {p2}, Lcom/squareup/okhttp/internal/http/RawHeaders;->getResponseCode()I

    move-result v5

    if-ne v5, v6, :cond_3c

    invoke-interface {p0, p4, p5, v0}, Lcom/squareup/okhttp/OkAuthenticator;->authenticateProxy(Ljava/net/Proxy;Ljava/net/URL;Ljava/util/List;)Lcom/squareup/okhttp/OkAuthenticator$Credential;

    move-result-object v1

    .line 104
    .local v1, "credential":Lcom/squareup/okhttp/OkAuthenticator$Credential;
    :goto_31
    if-eqz v1, :cond_17

    .line 108
    invoke-virtual {v1}, Lcom/squareup/okhttp/OkAuthenticator$Credential;->getHeaderValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v2, v4}, Lcom/squareup/okhttp/internal/http/RawHeaders;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const/4 v4, 0x1

    goto :goto_17

    .line 101
    .end local v1    # "credential":Lcom/squareup/okhttp/OkAuthenticator$Credential;
    :cond_3c
    invoke-interface {p0, p4, p5, v0}, Lcom/squareup/okhttp/OkAuthenticator;->authenticate(Ljava/net/Proxy;Ljava/net/URL;Ljava/util/List;)Lcom/squareup/okhttp/OkAuthenticator$Credential;

    move-result-object v1

    goto :goto_31
.end method
