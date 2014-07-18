.class Lcom/airbnb/android/utils/BlurredBitmap$1;
.super Ljava/lang/Object;
.source "BlurredBitmap.java"

# interfaces
.implements Lcom/airbnb/android/utils/BlurredBitmap$BitmapBlurCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/utils/BlurredBitmap;->blurBlocking(Landroid/content/Context;FI)Landroid/graphics/Bitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/utils/BlurredBitmap;

.field final synthetic val$block:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/airbnb/android/utils/BlurredBitmap;Ljava/lang/Object;)V
    .registers 3

    .prologue
    .line 66
    iput-object p1, p0, Lcom/airbnb/android/utils/BlurredBitmap$1;->this$0:Lcom/airbnb/android/utils/BlurredBitmap;

    iput-object p2, p0, Lcom/airbnb/android/utils/BlurredBitmap$1;->val$block:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bitmapBlurComplete(Landroid/graphics/Bitmap;)V
    .registers 4
    .param p1, "result"    # Landroid/graphics/Bitmap;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/airbnb/android/utils/BlurredBitmap$1;->this$0:Lcom/airbnb/android/utils/BlurredBitmap;

    const/4 v1, 0x1

    # setter for: Lcom/airbnb/android/utils/BlurredBitmap;->mIsFinished:Z
    invoke-static {v0, v1}, Lcom/airbnb/android/utils/BlurredBitmap;->access$002(Lcom/airbnb/android/utils/BlurredBitmap;Z)Z

    .line 71
    iget-object v0, p0, Lcom/airbnb/android/utils/BlurredBitmap$1;->this$0:Lcom/airbnb/android/utils/BlurredBitmap;

    # setter for: Lcom/airbnb/android/utils/BlurredBitmap;->mResult:Landroid/graphics/Bitmap;
    invoke-static {v0, p1}, Lcom/airbnb/android/utils/BlurredBitmap;->access$102(Lcom/airbnb/android/utils/BlurredBitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 73
    iget-object v1, p0, Lcom/airbnb/android/utils/BlurredBitmap$1;->val$block:Ljava/lang/Object;

    monitor-enter v1

    .line 74
    :try_start_e
    iget-object v0, p0, Lcom/airbnb/android/utils/BlurredBitmap$1;->val$block:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 75
    monitor-exit v1

    .line 76
    return-void

    .line 75
    :catchall_15
    move-exception v0

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_e .. :try_end_17} :catchall_15

    throw v0
.end method
