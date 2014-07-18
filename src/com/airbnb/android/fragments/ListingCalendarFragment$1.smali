.class Lcom/airbnb/android/fragments/ListingCalendarFragment$1;
.super Ljava/lang/Object;
.source "ListingCalendarFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/ListingCalendarFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/ListingCalendarFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/ListingCalendarFragment;)V
    .registers 2

    .prologue
    .line 78
    iput-object p1, p0, Lcom/airbnb/android/fragments/ListingCalendarFragment$1;->this$0:Lcom/airbnb/android/fragments/ListingCalendarFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 81
    iget-object v1, p0, Lcom/airbnb/android/fragments/ListingCalendarFragment$1;->this$0:Lcom/airbnb/android/fragments/ListingCalendarFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/ListingCalendarFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v1, p0, Lcom/airbnb/android/fragments/ListingCalendarFragment$1;->this$0:Lcom/airbnb/android/fragments/ListingCalendarFragment;

    # getter for: Lcom/airbnb/android/fragments/ListingCalendarFragment;->mListings:Ljava/util/List;
    invoke-static {v1}, Lcom/airbnb/android/fragments/ListingCalendarFragment;->access$000(Lcom/airbnb/android/fragments/ListingCalendarFragment;)Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/models/Listing;

    invoke-static {v2, v1}, Lcom/airbnb/android/activities/ManageListingActivity;->intentForState(Landroid/content/Context;Lcom/airbnb/android/models/Listing;)Landroid/content/Intent;

    move-result-object v0

    .line 82
    .local v0, "i":Landroid/content/Intent;
    iget-object v1, p0, Lcom/airbnb/android/fragments/ListingCalendarFragment$1;->this$0:Lcom/airbnb/android/fragments/ListingCalendarFragment;

    invoke-virtual {v1, v0}, Lcom/airbnb/android/fragments/ListingCalendarFragment;->startActivity(Landroid/content/Intent;)V

    .line 83
    return-void
.end method
