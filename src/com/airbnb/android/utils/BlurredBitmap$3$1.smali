.class Lcom/airbnb/android/utils/BlurredBitmap$3$1;
.super Ljava/lang/Object;
.source "BlurredBitmap.java"

# interfaces
.implements Lcom/airbnb/android/utils/BlurredBitmap$BitmapBlurCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/utils/BlurredBitmap$3;->onResponse(Lcom/android/volley/toolbox/ImageLoader$ImageContainer;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/utils/BlurredBitmap$3;


# direct methods
.method constructor <init>(Lcom/airbnb/android/utils/BlurredBitmap$3;)V
    .registers 2

    .prologue
    .line 250
    iput-object p1, p0, Lcom/airbnb/android/utils/BlurredBitmap$3$1;->this$0:Lcom/airbnb/android/utils/BlurredBitmap$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bitmapBlurComplete(Landroid/graphics/Bitmap;)V
    .registers 3
    .param p1, "result"    # Landroid/graphics/Bitmap;

    .prologue
    .line 255
    iget-object v0, p0, Lcom/airbnb/android/utils/BlurredBitmap$3$1;->this$0:Lcom/airbnb/android/utils/BlurredBitmap$3;

    iget-object v0, v0, Lcom/airbnb/android/utils/BlurredBitmap$3;->val$imageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 256
    iget-object v0, p0, Lcom/airbnb/android/utils/BlurredBitmap$3$1;->this$0:Lcom/airbnb/android/utils/BlurredBitmap$3;

    iget-object v0, v0, Lcom/airbnb/android/utils/BlurredBitmap$3;->val$imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 258
    :cond_11
    return-void
.end method
