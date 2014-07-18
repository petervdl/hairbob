.class final Lcom/airbnb/android/utils/BlurredBitmap$3;
.super Ljava/lang/Object;
.source "BlurredBitmap.java"

# interfaces
.implements Lcom/android/volley/toolbox/ImageLoader$ImageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/utils/BlurredBitmap;->fetchAndBlur(Ljava/lang/String;Landroid/widget/ImageView;IFI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$blurEdgeSize:I

.field final synthetic val$blurRadius:F

.field final synthetic val$defaultImageId:I

.field final synthetic val$imageUrl:Ljava/lang/String;

.field final synthetic val$imageView:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Landroid/widget/ImageView;Ljava/lang/String;FII)V
    .registers 6

    .prologue
    .line 245
    iput-object p1, p0, Lcom/airbnb/android/utils/BlurredBitmap$3;->val$imageView:Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/airbnb/android/utils/BlurredBitmap$3;->val$imageUrl:Ljava/lang/String;

    iput p3, p0, Lcom/airbnb/android/utils/BlurredBitmap$3;->val$blurRadius:F

    iput p4, p0, Lcom/airbnb/android/utils/BlurredBitmap$3;->val$blurEdgeSize:I

    iput p5, p0, Lcom/airbnb/android/utils/BlurredBitmap$3;->val$defaultImageId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 4
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 265
    iget-object v0, p0, Lcom/airbnb/android/utils/BlurredBitmap$3;->val$imageView:Landroid/widget/ImageView;

    iget v1, p0, Lcom/airbnb/android/utils/BlurredBitmap$3;->val$defaultImageId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 266
    return-void
.end method

.method public onResponse(Lcom/android/volley/toolbox/ImageLoader$ImageContainer;Z)V
    .registers 8
    .param p1, "response"    # Lcom/android/volley/toolbox/ImageLoader$ImageContainer;
    .param p2, "isImmediate"    # Z

    .prologue
    .line 248
    invoke-virtual {p1}, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_2b

    iget-object v1, p0, Lcom/airbnb/android/utils/BlurredBitmap$3;->val$imageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_2b

    .line 249
    new-instance v0, Lcom/airbnb/android/utils/BlurredBitmap;

    iget-object v1, p0, Lcom/airbnb/android/utils/BlurredBitmap$3;->val$imageUrl:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/airbnb/android/utils/BlurredBitmap;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 250
    .local v0, "blurred":Lcom/airbnb/android/utils/BlurredBitmap;
    iget-object v1, p0, Lcom/airbnb/android/utils/BlurredBitmap$3;->val$imageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/airbnb/android/utils/BlurredBitmap$3;->val$blurRadius:F

    iget v3, p0, Lcom/airbnb/android/utils/BlurredBitmap$3;->val$blurEdgeSize:I

    new-instance v4, Lcom/airbnb/android/utils/BlurredBitmap$3$1;

    invoke-direct {v4, p0}, Lcom/airbnb/android/utils/BlurredBitmap$3$1;-><init>(Lcom/airbnb/android/utils/BlurredBitmap$3;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/airbnb/android/utils/BlurredBitmap;->blur(Landroid/content/Context;FILcom/airbnb/android/utils/BlurredBitmap$BitmapBlurCallback;)V

    .line 261
    .end local v0    # "blurred":Lcom/airbnb/android/utils/BlurredBitmap;
    :cond_2b
    return-void
.end method
