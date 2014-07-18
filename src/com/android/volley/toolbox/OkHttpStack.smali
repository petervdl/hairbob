.class public Lcom/android/volley/toolbox/OkHttpStack;
.super Lcom/android/volley/toolbox/HurlStack;
.source "OkHttpStack.java"


# instance fields
.field private final client:Lcom/squareup/okhttp/OkHttpClient;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 17
    new-instance v0, Lcom/squareup/okhttp/OkHttpClient;

    invoke-direct {v0}, Lcom/squareup/okhttp/OkHttpClient;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/volley/toolbox/OkHttpStack;-><init>(Lcom/squareup/okhttp/OkHttpClient;)V

    .line 18
    return-void
.end method

.method public constructor <init>(Lcom/squareup/okhttp/OkHttpClient;)V
    .registers 5
    .param p1, "client"    # Lcom/squareup/okhttp/OkHttpClient;

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/android/volley/toolbox/HurlStack;-><init>()V

    .line 21
    if-nez p1, :cond_e

    .line 22
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "Client must not be null."

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 24
    :cond_e
    iput-object p1, p0, Lcom/android/volley/toolbox/OkHttpStack;->client:Lcom/squareup/okhttp/OkHttpClient;

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 29
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string/jumbo v1, "http/1.1"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    invoke-virtual {p1, v0}, Lcom/squareup/okhttp/OkHttpClient;->setTransports(Ljava/util/List;)Lcom/squareup/okhttp/OkHttpClient;

    .line 31
    return-void
.end method


# virtual methods
.method protected createConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .registers 3
    .param p1, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/volley/toolbox/OkHttpStack;->client:Lcom/squareup/okhttp/OkHttpClient;

    invoke-virtual {v0, p1}, Lcom/squareup/okhttp/OkHttpClient;->open(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-static {v0}, Lcom/newrelic/agent/android/instrumentation/OkHttpInstrumentation;->open(Ljava/net/HttpURLConnection;)Ljava/net/HttpURLConnection;

    move-result-object v0

    return-object v0
.end method

.method public getClient()Lcom/squareup/okhttp/OkHttpClient;
    .registers 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/volley/toolbox/OkHttpStack;->client:Lcom/squareup/okhttp/OkHttpClient;

    return-object v0
.end method
