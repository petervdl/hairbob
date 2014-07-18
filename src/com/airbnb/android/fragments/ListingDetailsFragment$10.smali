.class Lcom/airbnb/android/fragments/ListingDetailsFragment$10;
.super Ljava/lang/Object;
.source "ListingDetailsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/ListingDetailsFragment;I)V
    .registers 3

    .prologue
    .line 554
    iput-object p1, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment$10;->this$0:Lcom/airbnb/android/fragments/ListingDetailsFragment;

    iput p2, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment$10;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 558
    iget-object v0, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment$10;->this$0:Lcom/airbnb/android/fragments/ListingDetailsFragment;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment$10;->this$0:Lcom/airbnb/android/fragments/ListingDetailsFragment;

    # getter for: Lcom/airbnb/android/fragments/ListingDetailsFragment;->mListing:Lcom/airbnb/android/models/Listing;
    invoke-static {v2}, Lcom/airbnb/android/fragments/ListingDetailsFragment;->access$000(Lcom/airbnb/android/fragments/ListingDetailsFragment;)Lcom/airbnb/android/models/Listing;

    move-result-object v2

    iget v3, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment$10;->val$index:I

    iget-object v4, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment$10;->this$0:Lcom/airbnb/android/fragments/ListingDetailsFragment;

    # getter for: Lcom/airbnb/android/fragments/ListingDetailsFragment;->mPriceFromSearch:I
    invoke-static {v4}, Lcom/airbnb/android/fragments/ListingDetailsFragment;->access$800(Lcom/airbnb/android/fragments/ListingDetailsFragment;)I

    move-result v4

    invoke-static {v1, v2, v3, v4}, Lcom/airbnb/android/activities/ListingPicturesActivity;->intentForListing(Landroid/content/Context;Lcom/airbnb/android/models/Listing;II)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/fragments/ListingDetailsFragment;->startActivity(Landroid/content/Intent;)V

    .line 559
    return-void
.end method
