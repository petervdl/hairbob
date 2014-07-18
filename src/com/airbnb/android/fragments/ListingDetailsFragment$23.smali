.class Lcom/airbnb/android/fragments/ListingDetailsFragment$23;
.super Ljava/lang/Object;
.source "ListingDetailsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/ListingDetailsFragment;->updateStickyButtons(Landroid/view/View;)V
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
    .line 920
    iput-object p1, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment$23;->this$0:Lcom/airbnb/android/fragments/ListingDetailsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 925
    iget-object v0, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment$23;->this$0:Lcom/airbnb/android/fragments/ListingDetailsFragment;

    # invokes: Lcom/airbnb/android/fragments/ListingDetailsFragment;->goToBookit()V
    invoke-static {v0}, Lcom/airbnb/android/fragments/ListingDetailsFragment;->access$1600(Lcom/airbnb/android/fragments/ListingDetailsFragment;)V

    .line 927
    iget-object v0, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment$23;->this$0:Lcom/airbnb/android/fragments/ListingDetailsFragment;

    # getter for: Lcom/airbnb/android/fragments/ListingDetailsFragment;->mListing:Lcom/airbnb/android/models/Listing;
    invoke-static {v0}, Lcom/airbnb/android/fragments/ListingDetailsFragment;->access$000(Lcom/airbnb/android/fragments/ListingDetailsFragment;)Lcom/airbnb/android/models/Listing;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/models/Listing;->getId()J

    move-result-wide v1

    const-string/jumbo v3, "COMPLETE_BOOKING"

    iget-object v0, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment$23;->this$0:Lcom/airbnb/android/fragments/ListingDetailsFragment;

    # getter for: Lcom/airbnb/android/fragments/ListingDetailsFragment;->mListing:Lcom/airbnb/android/models/Listing;
    invoke-static {v0}, Lcom/airbnb/android/fragments/ListingDetailsFragment;->access$000(Lcom/airbnb/android/fragments/ListingDetailsFragment;)Lcom/airbnb/android/models/Listing;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/models/Listing;->getSpecialOffer()Lcom/airbnb/android/models/SpecialOffer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/models/SpecialOffer;->isPreApproval()Z

    move-result v0

    if-eqz v0, :cond_2f

    const-string/jumbo v0, "PREAPPROVAL"

    :goto_25
    iget-object v4, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment$23;->this$0:Lcom/airbnb/android/fragments/ListingDetailsFragment;

    # getter for: Lcom/airbnb/android/fragments/ListingDetailsFragment;->mStickyButtonText:Ljava/lang/String;
    invoke-static {v4}, Lcom/airbnb/android/fragments/ListingDetailsFragment;->access$1700(Lcom/airbnb/android/fragments/ListingDetailsFragment;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v0, v4}, Lcom/airbnb/android/analytics/ListingDetailAnalytics;->trackClickBook(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 929
    return-void

    .line 927
    :cond_2f
    const-string/jumbo v0, "SPECIAL_OFFER"

    goto :goto_25
.end method
