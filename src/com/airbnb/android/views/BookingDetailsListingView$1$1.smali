.class Lcom/airbnb/android/views/BookingDetailsListingView$1$1;
.super Ljava/lang/Object;
.source "BookingDetailsListingView.java"

# interfaces
.implements Lcom/airbnb/android/utils/BlurredBitmap$BitmapBlurCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/views/BookingDetailsListingView$1;->onResponse(Lcom/android/volley/toolbox/ImageLoader$ImageContainer;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/airbnb/android/views/BookingDetailsListingView$1;


# direct methods
.method constructor <init>(Lcom/airbnb/android/views/BookingDetailsListingView$1;)V
    .registers 2

    .prologue
    .line 53
    iput-object p1, p0, Lcom/airbnb/android/views/BookingDetailsListingView$1$1;->this$1:Lcom/airbnb/android/views/BookingDetailsListingView$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bitmapBlurComplete(Landroid/graphics/Bitmap;)V
    .registers 3
    .param p1, "result"    # Landroid/graphics/Bitmap;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/airbnb/android/views/BookingDetailsListingView$1$1;->this$1:Lcom/airbnb/android/views/BookingDetailsListingView$1;

    iget-object v0, v0, Lcom/airbnb/android/views/BookingDetailsListingView$1;->this$0:Lcom/airbnb/android/views/BookingDetailsListingView;

    iget-object v0, v0, Lcom/airbnb/android/views/BookingDetailsListingView;->mBackground:Lcom/airbnb/android/views/AirImageView;

    invoke-virtual {v0, p1}, Lcom/airbnb/android/views/AirImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 59
    return-void
.end method
