.class Lcom/airbnb/android/fragments/verifiedid/VerifiedIdCompletedFragment$2;
.super Ljava/lang/Object;
.source "VerifiedIdCompletedFragment.java"

# interfaces
.implements Lcom/android/volley/toolbox/ImageLoader$ImageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/verifiedid/VerifiedIdCompletedFragment;->setupReservationView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/verifiedid/VerifiedIdCompletedFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/verifiedid/VerifiedIdCompletedFragment;)V
    .registers 2

    .prologue
    .line 115
    iput-object p1, p0, Lcom/airbnb/android/fragments/verifiedid/VerifiedIdCompletedFragment$2;->this$0:Lcom/airbnb/android/fragments/verifiedid/VerifiedIdCompletedFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 3
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/airbnb/android/fragments/verifiedid/VerifiedIdCompletedFragment$2;->this$0:Lcom/airbnb/android/fragments/verifiedid/VerifiedIdCompletedFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/verifiedid/VerifiedIdCompletedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/android/requests/AirbnbRequest;->toastGenericVolleyError(Landroid/content/Context;)V

    .line 132
    return-void
.end method

.method public onResponse(Lcom/android/volley/toolbox/ImageLoader$ImageContainer;Z)V
    .registers 9
    .param p1, "response"    # Lcom/android/volley/toolbox/ImageLoader$ImageContainer;
    .param p2, "isImmediate"    # Z

    .prologue
    .line 119
    iget-object v2, p0, Lcom/airbnb/android/fragments/verifiedid/VerifiedIdCompletedFragment$2;->this$0:Lcom/airbnb/android/fragments/verifiedid/VerifiedIdCompletedFragment;

    invoke-virtual {v2}, Lcom/airbnb/android/fragments/verifiedid/VerifiedIdCompletedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    if-eqz v2, :cond_30

    .line 120
    invoke-virtual {p1}, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 121
    .local v1, "bm":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_30

    .line 122
    new-instance v0, Lcom/airbnb/android/utils/BlurredBitmap;

    iget-object v2, p0, Lcom/airbnb/android/fragments/verifiedid/VerifiedIdCompletedFragment$2;->this$0:Lcom/airbnb/android/fragments/verifiedid/VerifiedIdCompletedFragment;

    # getter for: Lcom/airbnb/android/fragments/verifiedid/VerifiedIdCompletedFragment;->mReservation:Lcom/airbnb/android/models/Reservation;
    invoke-static {v2}, Lcom/airbnb/android/fragments/verifiedid/VerifiedIdCompletedFragment;->access$000(Lcom/airbnb/android/fragments/verifiedid/VerifiedIdCompletedFragment;)Lcom/airbnb/android/models/Reservation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/android/models/Reservation;->getListing()Lcom/airbnb/android/models/Listing;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/android/models/Listing;->getPictureUrl()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lcom/airbnb/android/utils/BlurredBitmap;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 124
    .local v0, "bbm":Lcom/airbnb/android/utils/BlurredBitmap;
    iget-object v2, p0, Lcom/airbnb/android/fragments/verifiedid/VerifiedIdCompletedFragment$2;->this$0:Lcom/airbnb/android/fragments/verifiedid/VerifiedIdCompletedFragment;

    invoke-virtual {v2}, Lcom/airbnb/android/fragments/verifiedid/VerifiedIdCompletedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/high16 v3, 0x41700000

    const/16 v4, 0xa

    iget-object v5, p0, Lcom/airbnb/android/fragments/verifiedid/VerifiedIdCompletedFragment$2;->this$0:Lcom/airbnb/android/fragments/verifiedid/VerifiedIdCompletedFragment;

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/airbnb/android/utils/BlurredBitmap;->blur(Landroid/content/Context;FILcom/airbnb/android/utils/BlurredBitmap$BitmapBlurCallback;)V

    .line 127
    .end local v0    # "bbm":Lcom/airbnb/android/utils/BlurredBitmap;
    .end local v1    # "bm":Landroid/graphics/Bitmap;
    :cond_30
    return-void
.end method
