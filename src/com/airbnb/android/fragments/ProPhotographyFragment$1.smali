.class Lcom/airbnb/android/fragments/ProPhotographyFragment$1;
.super Ljava/lang/Object;
.source "ProPhotographyFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/ProPhotographyFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/ProPhotographyFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/ProPhotographyFragment;)V
    .registers 2

    .prologue
    .line 91
    iput-object p1, p0, Lcom/airbnb/android/fragments/ProPhotographyFragment$1;->this$0:Lcom/airbnb/android/fragments/ProPhotographyFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 95
    iget-object v3, p0, Lcom/airbnb/android/fragments/ProPhotographyFragment$1;->this$0:Lcom/airbnb/android/fragments/ProPhotographyFragment;

    # getter for: Lcom/airbnb/android/fragments/ProPhotographyFragment;->originForAnalytics:Lcom/airbnb/android/analytics/ProPhotoAnalytics$Origin;
    invoke-static {v3}, Lcom/airbnb/android/fragments/ProPhotographyFragment;->access$000(Lcom/airbnb/android/fragments/ProPhotographyFragment;)Lcom/airbnb/android/analytics/ProPhotoAnalytics$Origin;

    move-result-object v3

    const-string/jumbo v4, "get_photography"

    const-string/jumbo v5, "apply_now_click"

    invoke-static {v3, v4, v5}, Lcom/airbnb/android/analytics/ProPhotoAnalytics;->trackClick(Lcom/airbnb/android/analytics/ProPhotoAnalytics$Origin;Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    iget-object v3, p0, Lcom/airbnb/android/fragments/ProPhotographyFragment$1;->this$0:Lcom/airbnb/android/fragments/ProPhotographyFragment;

    const/4 v4, 0x0

    # setter for: Lcom/airbnb/android/fragments/ProPhotographyFragment;->mLimitReachedDialog:Lcom/airbnb/android/fragments/ZenDialog;
    invoke-static {v3, v4}, Lcom/airbnb/android/fragments/ProPhotographyFragment;->access$102(Lcom/airbnb/android/fragments/ProPhotographyFragment;Lcom/airbnb/android/fragments/ZenDialog;)Lcom/airbnb/android/fragments/ZenDialog;

    .line 98
    iget-object v3, p0, Lcom/airbnb/android/fragments/ProPhotographyFragment$1;->this$0:Lcom/airbnb/android/fragments/ProPhotographyFragment;

    invoke-virtual {v3}, Lcom/airbnb/android/fragments/ProPhotographyFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    # getter for: Lcom/airbnb/android/fragments/ProPhotographyFragment;->LISTING_ID:Ljava/lang/String;
    invoke-static {}, Lcom/airbnb/android/fragments/ProPhotographyFragment;->access$200()Ljava/lang/String;

    move-result-object v4

    # getter for: Lcom/airbnb/android/fragments/ProPhotographyFragment;->INVALID_ID:J
    invoke-static {}, Lcom/airbnb/android/fragments/ProPhotographyFragment;->access$300()J

    move-result-wide v5

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 99
    .local v0, "listingId":J
    iget-object v3, p0, Lcom/airbnb/android/fragments/ProPhotographyFragment$1;->this$0:Lcom/airbnb/android/fragments/ProPhotographyFragment;

    invoke-virtual {v3}, Lcom/airbnb/android/fragments/ProPhotographyFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    # getter for: Lcom/airbnb/android/fragments/ProPhotographyFragment;->LISTING_NAME:Ljava/lang/String;
    invoke-static {}, Lcom/airbnb/android/fragments/ProPhotographyFragment;->access$400()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 100
    .local v2, "listingName":Ljava/lang/String;
    # getter for: Lcom/airbnb/android/fragments/ProPhotographyFragment;->INVALID_ID:J
    invoke-static {}, Lcom/airbnb/android/fragments/ProPhotographyFragment;->access$300()J

    move-result-wide v3

    cmp-long v3, v0, v3

    if-eqz v3, :cond_43

    .line 101
    iget-object v3, p0, Lcom/airbnb/android/fragments/ProPhotographyFragment$1;->this$0:Lcom/airbnb/android/fragments/ProPhotographyFragment;

    # invokes: Lcom/airbnb/android/fragments/ProPhotographyFragment;->showConfirmDialogForListing(JLjava/lang/String;)V
    invoke-static {v3, v0, v1, v2}, Lcom/airbnb/android/fragments/ProPhotographyFragment;->access$500(Lcom/airbnb/android/fragments/ProPhotographyFragment;JLjava/lang/String;)V

    .line 105
    :goto_42
    return-void

    .line 103
    :cond_43
    iget-object v3, p0, Lcom/airbnb/android/fragments/ProPhotographyFragment$1;->this$0:Lcom/airbnb/android/fragments/ProPhotographyFragment;

    # invokes: Lcom/airbnb/android/fragments/ProPhotographyFragment;->showSelectListingDialog()V
    invoke-static {v3}, Lcom/airbnb/android/fragments/ProPhotographyFragment;->access$600(Lcom/airbnb/android/fragments/ProPhotographyFragment;)V

    goto :goto_42
.end method
