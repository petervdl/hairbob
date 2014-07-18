.class Lcom/airbnb/android/fragments/ListingDetailsFragment$9;
.super Ljava/lang/Object;
.source "ListingDetailsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/ListingDetailsFragment;->updateListingPictures(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/ListingDetailsFragment;

.field final synthetic val$imageView:Lcom/airbnb/android/views/AirImageView;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/ListingDetailsFragment;Lcom/airbnb/android/views/AirImageView;Landroid/view/View;)V
    .registers 4

    .prologue
    .line 543
    iput-object p1, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment$9;->this$0:Lcom/airbnb/android/fragments/ListingDetailsFragment;

    iput-object p2, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment$9;->val$imageView:Lcom/airbnb/android/views/AirImageView;

    iput-object p3, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment$9;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 546
    iget-object v2, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment$9;->val$imageView:Lcom/airbnb/android/views/AirImageView;

    invoke-virtual {v2}, Lcom/airbnb/android/views/AirImageView;->getWidth()I

    move-result v1

    .line 547
    .local v1, "width":I
    int-to-float v2, v1

    const v3, 0x3f2aaaab

    mul-float/2addr v2, v3

    const v3, 0x3f266666

    mul-float/2addr v2, v3

    float-to-int v0, v2

    .line 548
    .local v0, "imageHeight":I
    iget-object v2, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment$9;->val$imageView:Lcom/airbnb/android/views/AirImageView;

    invoke-virtual {v2}, Lcom/airbnb/android/views/AirImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 549
    iget-object v2, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment$9;->val$view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 550
    return-void
.end method
