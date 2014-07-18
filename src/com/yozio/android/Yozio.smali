.class public Lcom/yozio/android/Yozio;
.super Ljava/lang/Object;
.source "Yozio.java"


# static fields
.field public static YOZIO_CONNECTION_TIMEOUT:I

.field public static YOZIO_ENABLE_LOGGING:Z

.field public static YOZIO_SOCKET_TIMEOUT:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 10
    const/4 v0, 0x1

    sput-boolean v0, Lcom/yozio/android/Yozio;->YOZIO_ENABLE_LOGGING:Z

    .line 12
    const/16 v0, 0xbb8

    sput v0, Lcom/yozio/android/Yozio;->YOZIO_CONNECTION_TIMEOUT:I

    .line 13
    const/16 v0, 0x1388

    sput v0, Lcom/yozio/android/Yozio;->YOZIO_SOCKET_TIMEOUT:I

    return-void
.end method

.method public static setAppKeyAndSecretKey(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/yozio/android/interfaces/GetMetaDataCallback;)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appKey"    # Ljava/lang/String;
    .param p2, "secretKey"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/yozio/android/interfaces/GetMetaDataCallback;

    .prologue
    .line 37
    invoke-static {}, Lcom/yozio/android/YozioService;->getInstance()Lcom/yozio/android/YozioService;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/yozio/android/YozioService;->setAppKeyAndSecretKey(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/yozio/android/interfaces/GetMetaDataCallback;)V

    .line 38
    return-void
.end method
