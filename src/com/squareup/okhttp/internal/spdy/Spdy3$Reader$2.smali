.class Lcom/squareup/okhttp/internal/spdy/Spdy3$Reader$2;
.super Ljava/util/zip/Inflater;
.source "Spdy3.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/squareup/okhttp/internal/spdy/Spdy3$Reader;->newNameValueBlockStream()Ljava/io/DataInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/squareup/okhttp/internal/spdy/Spdy3$Reader;


# direct methods
.method constructor <init>(Lcom/squareup/okhttp/internal/spdy/Spdy3$Reader;)V
    .registers 2

    .prologue
    .line 265
    iput-object p1, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Reader$2;->this$0:Lcom/squareup/okhttp/internal/spdy/Spdy3$Reader;

    invoke-direct {p0}, Ljava/util/zip/Inflater;-><init>()V

    return-void
.end method


# virtual methods
.method public inflate([BII)I
    .registers 6
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/DataFormatException;
        }
    .end annotation

    .prologue
    .line 268
    invoke-super {p0, p1, p2, p3}, Ljava/util/zip/Inflater;->inflate([BII)I

    move-result v0

    .line 269
    .local v0, "result":I
    if-nez v0, :cond_15

    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/spdy/Spdy3$Reader$2;->needsDictionary()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 270
    sget-object v1, Lcom/squareup/okhttp/internal/spdy/Spdy3;->DICTIONARY:[B

    invoke-virtual {p0, v1}, Lcom/squareup/okhttp/internal/spdy/Spdy3$Reader$2;->setDictionary([B)V

    .line 271
    invoke-super {p0, p1, p2, p3}, Ljava/util/zip/Inflater;->inflate([BII)I

    move-result v0

    .line 273
    :cond_15
    return v0
.end method
