.class public Lcom/android/volley/NetworkResponse;
.super Ljava/lang/Object;
.source "NetworkResponse.java"


# instance fields
.field public final data:[B

.field public final errorResponseString:Ljava/lang/String;

.field public final headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public isImage:Z

.field public final notModified:Z

.field public final statusCode:I


# direct methods
.method public constructor <init>(I[BLjava/util/Map;Z)V
    .registers 8
    .param p1, "statusCode"    # I
    .param p2, "data"    # [B
    .param p4, "notModified"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[B",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p3, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/volley/NetworkResponse;->isImage:Z

    .line 38
    iput p1, p0, Lcom/android/volley/NetworkResponse;->statusCode:I

    .line 39
    iput-object p2, p0, Lcom/android/volley/NetworkResponse;->data:[B

    .line 40
    iput-object p3, p0, Lcom/android/volley/NetworkResponse;->headers:Ljava/util/Map;

    .line 41
    iput-boolean p4, p0, Lcom/android/volley/NetworkResponse;->notModified:Z

    .line 45
    :try_start_e
    new-instance v1, Ljava/lang/String;

    const-string/jumbo v2, "UTF-8"

    invoke-direct {v1, p2, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_16
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_e .. :try_end_16} :catch_19

    .line 49
    .local v1, "inter":Ljava/lang/String;
    :goto_16
    iput-object v1, p0, Lcom/android/volley/NetworkResponse;->errorResponseString:Ljava/lang/String;

    .line 50
    return-void

    .line 46
    .end local v1    # "inter":Ljava/lang/String;
    :catch_19
    move-exception v0

    .line 47
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const-string/jumbo v1, "<error parse failed>"

    .restart local v1    # "inter":Ljava/lang/String;
    goto :goto_16
.end method

.method public constructor <init>([BLjava/util/Map;)V
    .registers 5
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 57
    .local p2, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v0, 0xc8

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/android/volley/NetworkResponse;-><init>(I[BLjava/util/Map;Z)V

    .line 58
    return-void
.end method
