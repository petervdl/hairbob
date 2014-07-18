.class Lcom/airbnb/android/fragments/ProPhotographyFragment$ProPhotoSelectListingDialogFragment$2;
.super Ljava/lang/Object;
.source "ProPhotographyFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/ProPhotographyFragment$ProPhotoSelectListingDialogFragment;->setupListView(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/ProPhotographyFragment$ProPhotoSelectListingDialogFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/ProPhotographyFragment$ProPhotoSelectListingDialogFragment;)V
    .registers 2

    .prologue
    .line 344
    iput-object p1, p0, Lcom/airbnb/android/fragments/ProPhotographyFragment$ProPhotoSelectListingDialogFragment$2;->this$0:Lcom/airbnb/android/fragments/ProPhotographyFragment$ProPhotoSelectListingDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 11
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 348
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/airbnb/android/fragments/ProPhotographyFragment$ProPhotoSelectListingDialogFragment$2;->this$0:Lcom/airbnb/android/fragments/ProPhotographyFragment$ProPhotoSelectListingDialogFragment;

    # getter for: Lcom/airbnb/android/fragments/ProPhotographyFragment$ProPhotoSelectListingDialogFragment;->originForAnalytics:Lcom/airbnb/android/analytics/ProPhotoAnalytics$Origin;
    invoke-static {v1}, Lcom/airbnb/android/fragments/ProPhotographyFragment$ProPhotoSelectListingDialogFragment;->access$1300(Lcom/airbnb/android/fragments/ProPhotographyFragment$ProPhotoSelectListingDialogFragment;)Lcom/airbnb/android/analytics/ProPhotoAnalytics$Origin;

    move-result-object v1

    const-string/jumbo v2, "select_listing"

    const-string/jumbo v3, "select_listing_click"

    invoke-static {v1, v2, v3}, Lcom/airbnb/android/analytics/ProPhotoAnalytics;->trackClick(Lcom/airbnb/android/analytics/ProPhotoAnalytics$Origin;Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne p3, v1, :cond_18

    .line 354
    :goto_17
    return-void

    .line 352
    :cond_18
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/models/Listing;

    .line 353
    .local v0, "listing":Lcom/airbnb/android/models/Listing;
    iget-object v1, p0, Lcom/airbnb/android/fragments/ProPhotographyFragment$ProPhotoSelectListingDialogFragment$2;->this$0:Lcom/airbnb/android/fragments/ProPhotographyFragment$ProPhotoSelectListingDialogFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/ProPhotographyFragment$ProPhotoSelectListingDialogFragment;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/fragments/ProPhotographyFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/models/Listing;->getId()J

    move-result-wide v2

    invoke-virtual {v0}, Lcom/airbnb/android/models/Listing;->getName()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/airbnb/android/fragments/ProPhotographyFragment;->showConfirmDialogForListing(JLjava/lang/String;)V
    invoke-static {v1, v2, v3, v4}, Lcom/airbnb/android/fragments/ProPhotographyFragment;->access$500(Lcom/airbnb/android/fragments/ProPhotographyFragment;JLjava/lang/String;)V

    goto :goto_17
.end method
