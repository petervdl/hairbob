.class Lcom/squareup/okhttp/internal/spdy/Spdy3$Reader$1;
.super Ljava/io/InputStream;
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
    .line 247
    iput-object p1, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Reader$1;->this$0:Lcom/squareup/okhttp/internal/spdy/Spdy3$Reader;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 260
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Reader$1;->this$0:Lcom/squareup/okhttp/internal/spdy/Spdy3$Reader;

    # getter for: Lcom/squareup/okhttp/internal/spdy/Spdy3$Reader;->in:Ljava/io/DataInputStream;
    invoke-static {v0}, Lcom/squareup/okhttp/internal/spdy/Spdy3$Reader;->access$100(Lcom/squareup/okhttp/internal/spdy/Spdy3$Reader;)Ljava/io/DataInputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    .line 261
    return-void
.end method

.method public read()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 249
    invoke-static {p0}, Lcom/squareup/okhttp/internal/Util;->readSingleByte(Ljava/io/InputStream;)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .registers 6
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 253
    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Reader$1;->this$0:Lcom/squareup/okhttp/internal/spdy/Spdy3$Reader;

    # getter for: Lcom/squareup/okhttp/internal/spdy/Spdy3$Reader;->compressedLimit:I
    invoke-static {v1}, Lcom/squareup/okhttp/internal/spdy/Spdy3$Reader;->access$000(Lcom/squareup/okhttp/internal/spdy/Spdy3$Reader;)I

    move-result v1

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 254
    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Reader$1;->this$0:Lcom/squareup/okhttp/internal/spdy/Spdy3$Reader;

    # getter for: Lcom/squareup/okhttp/internal/spdy/Spdy3$Reader;->in:Ljava/io/DataInputStream;
    invoke-static {v1}, Lcom/squareup/okhttp/internal/spdy/Spdy3$Reader;->access$100(Lcom/squareup/okhttp/internal/spdy/Spdy3$Reader;)Ljava/io/DataInputStream;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/DataInputStream;->read([BII)I

    move-result v0

    .line 255
    .local v0, "consumed":I
    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Reader$1;->this$0:Lcom/squareup/okhttp/internal/spdy/Spdy3$Reader;

    # -= operator for: Lcom/squareup/okhttp/internal/spdy/Spdy3$Reader;->compressedLimit:I
    invoke-static {v1, v0}, Lcom/squareup/okhttp/internal/spdy/Spdy3$Reader;->access$020(Lcom/squareup/okhttp/internal/spdy/Spdy3$Reader;I)I

    .line 256
    return v0
.end method
