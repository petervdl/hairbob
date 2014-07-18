.class Lcom/airbnb/android/fragments/SpacesListFragment$2;
.super Ljava/lang/Object;
.source "SpacesListFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/SpacesListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/SpacesListFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/SpacesListFragment;)V
    .registers 2

    .prologue
    .line 132
    iput-object p1, p0, Lcom/airbnb/android/fragments/SpacesListFragment$2;->this$0:Lcom/airbnb/android/fragments/SpacesListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 13
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
    .line 136
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v3, p0, Lcom/airbnb/android/fragments/SpacesListFragment$2;->this$0:Lcom/airbnb/android/fragments/SpacesListFragment;

    # getter for: Lcom/airbnb/android/fragments/SpacesListFragment;->mResultsAdapter:Lcom/airbnb/android/adapters/ListingsRowAdapter;
    invoke-static {v3}, Lcom/airbnb/android/fragments/SpacesListFragment;->access$000(Lcom/airbnb/android/fragments/SpacesListFragment;)Lcom/airbnb/android/adapters/ListingsRowAdapter;

    move-result-object v3

    invoke-virtual {v3, p3}, Lcom/airbnb/android/adapters/ListingsRowAdapter;->getItemAsListing(I)Lcom/airbnb/android/models/Listing;

    move-result-object v3

    invoke-virtual {v3}, Lcom/airbnb/android/models/Listing;->getListing()Lcom/airbnb/android/models/Listing;

    move-result-object v2

    .line 137
    .local v2, "listing":Lcom/airbnb/android/models/Listing;
    const-string/jumbo v3, "airnav_calendar"

    const-string/jumbo v4, "enabled"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/airbnb/android/utils/Trebuchet;->launch(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    .line 138
    .local v0, "airnavCalendarExperiment":Z
    if-eqz v0, :cond_2f

    .line 139
    iget-object v3, p0, Lcom/airbnb/android/fragments/SpacesListFragment$2;->this$0:Lcom/airbnb/android/fragments/SpacesListFragment;

    invoke-virtual {v3}, Lcom/airbnb/android/fragments/SpacesListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v2}, Lcom/airbnb/android/models/Listing;->getId()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/airbnb/android/activities/ManageListingActivity;->intentForState(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v1

    .line 140
    .local v1, "i":Landroid/content/Intent;
    iget-object v3, p0, Lcom/airbnb/android/fragments/SpacesListFragment$2;->this$0:Lcom/airbnb/android/fragments/SpacesListFragment;

    invoke-virtual {v3, v1}, Lcom/airbnb/android/fragments/SpacesListFragment;->startActivity(Landroid/content/Intent;)V

    .line 144
    .end local v1    # "i":Landroid/content/Intent;
    :goto_2e
    return-void

    .line 142
    :cond_2f
    iget-object v3, p0, Lcom/airbnb/android/fragments/SpacesListFragment$2;->this$0:Lcom/airbnb/android/fragments/SpacesListFragment;

    iget-object v4, p0, Lcom/airbnb/android/fragments/SpacesListFragment$2;->this$0:Lcom/airbnb/android/fragments/SpacesListFragment;

    invoke-virtual {v4}, Lcom/airbnb/android/fragments/SpacesListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const-class v5, Lcom/airbnb/android/fragments/ListingCalendarFragment;

    const/4 v6, 0x1

    invoke-static {v2, v6}, Lcom/airbnb/android/fragments/ListingCalendarFragment;->getBundle(Lcom/airbnb/android/models/Listing;Z)Landroid/os/Bundle;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/airbnb/android/activities/AutoAirActivity;->intentForFragment(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/airbnb/android/fragments/SpacesListFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_2e
.end method
