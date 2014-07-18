.class Lcom/squareup/okhttp/internal/http/RequestHeaders$1;
.super Ljava/lang/Object;
.source "RequestHeaders.java"

# interfaces
.implements Lcom/squareup/okhttp/internal/http/HeaderParser$CacheControlHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/squareup/okhttp/internal/http/RequestHeaders;-><init>(Ljava/net/URI;Lcom/squareup/okhttp/internal/http/RawHeaders;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/squareup/okhttp/internal/http/RequestHeaders;


# direct methods
.method constructor <init>(Lcom/squareup/okhttp/internal/http/RequestHeaders;)V
    .registers 2

    .prologue
    .line 66
    iput-object p1, p0, Lcom/squareup/okhttp/internal/http/RequestHeaders$1;->this$0:Lcom/squareup/okhttp/internal/http/RequestHeaders;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handle(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "directive"    # Ljava/lang/String;
    .param p2, "parameter"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 68
    const-string/jumbo v0, "no-cache"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 69
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/RequestHeaders$1;->this$0:Lcom/squareup/okhttp/internal/http/RequestHeaders;

    # setter for: Lcom/squareup/okhttp/internal/http/RequestHeaders;->noCache:Z
    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/http/RequestHeaders;->access$002(Lcom/squareup/okhttp/internal/http/RequestHeaders;Z)Z

    .line 79
    :cond_f
    :goto_f
    return-void

    .line 70
    :cond_10
    const-string/jumbo v0, "max-age"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 71
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/RequestHeaders$1;->this$0:Lcom/squareup/okhttp/internal/http/RequestHeaders;

    invoke-static {p2}, Lcom/squareup/okhttp/internal/http/HeaderParser;->parseSeconds(Ljava/lang/String;)I

    move-result v1

    # setter for: Lcom/squareup/okhttp/internal/http/RequestHeaders;->maxAgeSeconds:I
    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/http/RequestHeaders;->access$102(Lcom/squareup/okhttp/internal/http/RequestHeaders;I)I

    goto :goto_f

    .line 72
    :cond_23
    const-string/jumbo v0, "max-stale"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 73
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/RequestHeaders$1;->this$0:Lcom/squareup/okhttp/internal/http/RequestHeaders;

    invoke-static {p2}, Lcom/squareup/okhttp/internal/http/HeaderParser;->parseSeconds(Ljava/lang/String;)I

    move-result v1

    # setter for: Lcom/squareup/okhttp/internal/http/RequestHeaders;->maxStaleSeconds:I
    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/http/RequestHeaders;->access$202(Lcom/squareup/okhttp/internal/http/RequestHeaders;I)I

    goto :goto_f

    .line 74
    :cond_36
    const-string/jumbo v0, "min-fresh"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 75
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/RequestHeaders$1;->this$0:Lcom/squareup/okhttp/internal/http/RequestHeaders;

    invoke-static {p2}, Lcom/squareup/okhttp/internal/http/HeaderParser;->parseSeconds(Ljava/lang/String;)I

    move-result v1

    # setter for: Lcom/squareup/okhttp/internal/http/RequestHeaders;->minFreshSeconds:I
    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/http/RequestHeaders;->access$302(Lcom/squareup/okhttp/internal/http/RequestHeaders;I)I

    goto :goto_f

    .line 76
    :cond_49
    const-string/jumbo v0, "only-if-cached"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 77
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/RequestHeaders$1;->this$0:Lcom/squareup/okhttp/internal/http/RequestHeaders;

    # setter for: Lcom/squareup/okhttp/internal/http/RequestHeaders;->onlyIfCached:Z
    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/http/RequestHeaders;->access$402(Lcom/squareup/okhttp/internal/http/RequestHeaders;Z)Z

    goto :goto_f
.end method
