.class Lcom/airbnb/android/fragments/ListingDetailsFragment$24;
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
    .line 937
    iput-object p1, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment$24;->this$0:Lcom/airbnb/android/fragments/ListingDetailsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 941
    iget-object v0, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment$24;->this$0:Lcom/airbnb/android/fragments/ListingDetailsFragment;

    const/16 v1, 0x2e9

    # invokes: Lcom/airbnb/android/fragments/ListingDetailsFragment;->verifyIsSignedIn(I)Z
    invoke-static {v0, v1}, Lcom/airbnb/android/fragments/ListingDetailsFragment;->access$1800(Lcom/airbnb/android/fragments/ListingDetailsFragment;I)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 942
    iget-object v0, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment$24;->this$0:Lcom/airbnb/android/fragments/ListingDetailsFragment;

    # invokes: Lcom/airbnb/android/fragments/ListingDetailsFragment;->goToRequestToBook()V
    invoke-static {v0}, Lcom/airbnb/android/fragments/ListingDetailsFragment;->access$1900(Lcom/airbnb/android/fragments/ListingDetailsFragment;)V

    .line 944
    iget-object v0, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment$24;->this$0:Lcom/airbnb/android/fragments/ListingDetailsFragment;

    # getter for: Lcom/airbnb/android/fragments/ListingDetailsFragment;->mListing:Lcom/airbnb/android/models/Listing;
    invoke-static {v0}, Lcom/airbnb/android/fragments/ListingDetailsFragment;->access$000(Lcom/airbnb/android/fragments/ListingDetailsFragment;)Lcom/airbnb/android/models/Listing;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/models/Listing;->getId()J

    move-result-wide v0

    const-string/jumbo v2, "REQUEST_TO_BOOK"

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment$24;->this$0:Lcom/airbnb/android/fragments/ListingDetailsFragment;

    # getter for: Lcom/airbnb/android/fragments/ListingDetailsFragment;->mStickyButtonText:Ljava/lang/String;
    invoke-static {v4}, Lcom/airbnb/android/fragments/ListingDetailsFragment;->access$1700(Lcom/airbnb/android/fragments/ListingDetailsFragment;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/airbnb/android/analytics/ListingDetailAnalytics;->trackClickBook(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 946
    :cond_26
    return-void
.end method
