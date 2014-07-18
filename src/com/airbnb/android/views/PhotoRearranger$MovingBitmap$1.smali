.class Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap$1;
.super Ljava/lang/Object;
.source "PhotoRearranger.java"

# interfaces
.implements Lcom/android/volley/toolbox/ImageLoader$ImageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;-><init>(Lcom/airbnb/android/views/PhotoRearranger;Landroid/graphics/Rect;Lcom/airbnb/android/models/Photo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;

.field final synthetic val$this$0:Lcom/airbnb/android/views/PhotoRearranger;


# direct methods
.method constructor <init>(Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;Lcom/airbnb/android/views/PhotoRearranger;)V
    .registers 3

    .prologue
    .line 127
    iput-object p1, p0, Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap$1;->this$1:Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;

    iput-object p2, p0, Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap$1;->val$this$0:Lcom/airbnb/android/views/PhotoRearranger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 3
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap$1;->this$1:Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;

    iget-object v0, v0, Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;->this$0:Lcom/airbnb/android/views/PhotoRearranger;

    invoke-virtual {v0}, Lcom/airbnb/android/views/PhotoRearranger;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/android/requests/AirbnbRequest;->toastGenericVolleyError(Landroid/content/Context;)V

    .line 132
    return-void
.end method

.method public onResponse(Lcom/android/volley/toolbox/ImageLoader$ImageContainer;Z)V
    .registers 5
    .param p1, "response"    # Lcom/android/volley/toolbox/ImageLoader$ImageContainer;
    .param p2, "isImmediate"    # Z

    .prologue
    .line 136
    iget-object v0, p0, Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap$1;->this$1:Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;

    invoke-virtual {p1}, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    # invokes: Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;->setBitmap(Landroid/graphics/Bitmap;)V
    invoke-static {v0, v1}, Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;->access$000(Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;Landroid/graphics/Bitmap;)V

    .line 137
    iget-object v0, p0, Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap$1;->this$1:Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;

    iget-object v0, v0, Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;->this$0:Lcom/airbnb/android/views/PhotoRearranger;

    invoke-virtual {v0}, Lcom/airbnb/android/views/PhotoRearranger;->postInvalidate()V

    .line 138
    return-void
.end method
