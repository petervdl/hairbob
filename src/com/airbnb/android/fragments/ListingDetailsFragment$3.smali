.class Lcom/airbnb/android/fragments/ListingDetailsFragment$3;
.super Ljava/lang/Object;
.source "ListingDetailsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/ListingDetailsFragment;->updateViewPager(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/ListingDetailsFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/ListingDetailsFragment;)V
    .registers 2

    .prologue
    .line 363
    iput-object p1, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment$3;->this$0:Lcom/airbnb/android/fragments/ListingDetailsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 367
    iget-object v0, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment$3;->this$0:Lcom/airbnb/android/fragments/ListingDetailsFragment;

    iget-object v1, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment$3;->this$0:Lcom/airbnb/android/fragments/ListingDetailsFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/ListingDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment$3;->this$0:Lcom/airbnb/android/fragments/ListingDetailsFragment;

    # getter for: Lcom/airbnb/android/fragments/ListingDetailsFragment;->mListing:Lcom/airbnb/android/models/Listing;
    invoke-static {v2}, Lcom/airbnb/android/fragments/ListingDetailsFragment;->access$000(Lcom/airbnb/android/fragments/ListingDetailsFragment;)Lcom/airbnb/android/models/Listing;

    move-result-object v2

    iget-object v3, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment$3;->this$0:Lcom/airbnb/android/fragments/ListingDetailsFragment;

    # getter for: Lcom/airbnb/android/fragments/ListingDetailsFragment;->mImagePager:Lcom/airbnb/android/views/ClickableViewPager;
    invoke-static {v3}, Lcom/airbnb/android/fragments/ListingDetailsFragment;->access$700(Lcom/airbnb/android/fragments/ListingDetailsFragment;)Lcom/airbnb/android/views/ClickableViewPager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/airbnb/android/views/ClickableViewPager;->getCurrentItem()I

    move-result v3

    iget-object v4, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment$3;->this$0:Lcom/airbnb/android/fragments/ListingDetailsFragment;

    # getter for: Lcom/airbnb/android/fragments/ListingDetailsFragment;->mPriceFromSearch:I
    invoke-static {v4}, Lcom/airbnb/android/fragments/ListingDetailsFragment;->access$800(Lcom/airbnb/android/fragments/ListingDetailsFragment;)I

    move-result v4

    invoke-static {v1, v2, v3, v4}, Lcom/airbnb/android/activities/ListingPicturesActivity;->intentForListing(Landroid/content/Context;Lcom/airbnb/android/models/Listing;II)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/fragments/ListingDetailsFragment;->startActivity(Landroid/content/Intent;)V

    .line 368
    return-void
.end method
