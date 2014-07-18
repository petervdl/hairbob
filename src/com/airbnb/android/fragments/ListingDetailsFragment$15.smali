.class Lcom/airbnb/android/fragments/ListingDetailsFragment$15;
.super Ljava/lang/Object;
.source "ListingDetailsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/ListingDetailsFragment;->updateStats(Landroid/view/View;)V
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
    .line 682
    iput-object p1, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment$15;->this$0:Lcom/airbnb/android/fragments/ListingDetailsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 686
    iget-object v1, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment$15;->this$0:Lcom/airbnb/android/fragments/ListingDetailsFragment;

    # getter for: Lcom/airbnb/android/fragments/ListingDetailsFragment;->mCalendarMap:Lcom/airbnb/android/models/SquareMap;
    invoke-static {v1}, Lcom/airbnb/android/fragments/ListingDetailsFragment;->access$1300(Lcom/airbnb/android/fragments/ListingDetailsFragment;)Lcom/airbnb/android/models/SquareMap;

    move-result-object v1

    if-eqz v1, :cond_1d

    .line 687
    iget-object v1, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment$15;->this$0:Lcom/airbnb/android/fragments/ListingDetailsFragment;

    # getter for: Lcom/airbnb/android/fragments/ListingDetailsFragment;->mCalendarMap:Lcom/airbnb/android/models/SquareMap;
    invoke-static {v1}, Lcom/airbnb/android/fragments/ListingDetailsFragment;->access$1300(Lcom/airbnb/android/fragments/ListingDetailsFragment;)Lcom/airbnb/android/models/SquareMap;

    move-result-object v1

    invoke-static {v1}, Lcom/airbnb/android/fragments/HostAvailabilityCalendarFragment;->newInstance(Lcom/airbnb/android/models/SquareMap;)Lcom/airbnb/android/fragments/HostAvailabilityCalendarFragment;

    move-result-object v1

    iget-object v2, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment$15;->this$0:Lcom/airbnb/android/fragments/ListingDetailsFragment;

    invoke-virtual {v2}, Lcom/airbnb/android/fragments/ListingDetailsFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/fragments/HostAvailabilityCalendarFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 713
    :goto_1c
    return-void

    .line 691
    :cond_1d
    const v1, 0x7f0e03fe

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;->newInstance(II)Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;

    move-result-object v0

    .line 692
    .local v0, "loadingCalendarDialog":Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;
    iget-object v1, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment$15;->this$0:Lcom/airbnb/android/fragments/ListingDetailsFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/ListingDetailsFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 694
    new-instance v1, Lcom/airbnb/android/requests/CalendarRequest;

    iget-object v2, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment$15;->this$0:Lcom/airbnb/android/fragments/ListingDetailsFragment;

    # getter for: Lcom/airbnb/android/fragments/ListingDetailsFragment;->mListing:Lcom/airbnb/android/models/Listing;
    invoke-static {v2}, Lcom/airbnb/android/fragments/ListingDetailsFragment;->access$000(Lcom/airbnb/android/fragments/ListingDetailsFragment;)Lcom/airbnb/android/models/Listing;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/android/models/Listing;->getId()J

    move-result-wide v2

    new-instance v4, Lcom/airbnb/android/fragments/ListingDetailsFragment$15$1;

    invoke-direct {v4, p0, v0}, Lcom/airbnb/android/fragments/ListingDetailsFragment$15$1;-><init>(Lcom/airbnb/android/fragments/ListingDetailsFragment$15;Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;)V

    invoke-direct {v1, v2, v3, v4}, Lcom/airbnb/android/requests/CalendarRequest;-><init>(JLcom/airbnb/android/requests/RequestListener;)V

    iget-object v2, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment$15;->this$0:Lcom/airbnb/android/fragments/ListingDetailsFragment;

    invoke-virtual {v1, v2}, Lcom/airbnb/android/requests/CalendarRequest;->executeLifecycle(Lcom/airbnb/android/interfaces/RequestLifecycleManager;)V

    goto :goto_1c
.end method
