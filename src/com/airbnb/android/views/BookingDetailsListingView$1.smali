.class Lcom/airbnb/android/views/BookingDetailsListingView$1;
.super Ljava/lang/Object;
.source "BookingDetailsListingView.java"

# interfaces
.implements Lcom/android/volley/toolbox/ImageLoader$ImageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/views/BookingDetailsListingView;->showListing(Lcom/airbnb/android/models/Listing;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/views/BookingDetailsListingView;

.field final synthetic val$listing:Lcom/airbnb/android/models/Listing;


# direct methods
.method constructor <init>(Lcom/airbnb/android/views/BookingDetailsListingView;Lcom/airbnb/android/models/Listing;)V
    .registers 3

    .prologue
    .line 42
    iput-object p1, p0, Lcom/airbnb/android/views/BookingDetailsListingView$1;->this$0:Lcom/airbnb/android/views/BookingDetailsListingView;

    iput-object p2, p0, Lcom/airbnb/android/views/BookingDetailsListingView$1;->val$listing:Lcom/airbnb/android/models/Listing;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 4
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/airbnb/android/views/BookingDetailsListingView$1;->this$0:Lcom/airbnb/android/views/BookingDetailsListingView;

    iget-object v0, v0, Lcom/airbnb/android/views/BookingDetailsListingView;->mBackground:Lcom/airbnb/android/views/AirImageView;

    iget-object v1, p0, Lcom/airbnb/android/views/BookingDetailsListingView$1;->val$listing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v1}, Lcom/airbnb/android/models/Listing;->getPictureUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/AirImageView;->setImageUrl(Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method public onResponse(Lcom/android/volley/toolbox/ImageLoader$ImageContainer;Z)V
    .registers 8
    .param p1, "response"    # Lcom/android/volley/toolbox/ImageLoader$ImageContainer;
    .param p2, "isImmediate"    # Z

    .prologue
    .line 51
    invoke-virtual {p1}, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_27

    .line 52
    new-instance v0, Lcom/airbnb/android/utils/BlurredBitmap;

    iget-object v1, p0, Lcom/airbnb/android/views/BookingDetailsListingView$1;->val$listing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v1}, Lcom/airbnb/android/models/Listing;->getPictureUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/airbnb/android/utils/BlurredBitmap;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 53
    .local v0, "blur":Lcom/airbnb/android/utils/BlurredBitmap;
    iget-object v1, p0, Lcom/airbnb/android/views/BookingDetailsListingView$1;->this$0:Lcom/airbnb/android/views/BookingDetailsListingView;

    invoke-virtual {v1}, Lcom/airbnb/android/views/BookingDetailsListingView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x40e00000

    const/16 v3, 0x14

    new-instance v4, Lcom/airbnb/android/views/BookingDetailsListingView$1$1;

    invoke-direct {v4, p0}, Lcom/airbnb/android/views/BookingDetailsListingView$1$1;-><init>(Lcom/airbnb/android/views/BookingDetailsListingView$1;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/airbnb/android/utils/BlurredBitmap;->blur(Landroid/content/Context;FILcom/airbnb/android/utils/BlurredBitmap$BitmapBlurCallback;)V

    .line 62
    .end local v0    # "blur":Lcom/airbnb/android/utils/BlurredBitmap;
    :cond_27
    return-void
.end method
