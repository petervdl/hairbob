.class Lcom/airbnb/android/fragments/SpacesListFragment$3;
.super Ljava/lang/Object;
.source "SpacesListFragment.java"

# interfaces
.implements Lcom/airbnb/android/requests/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/SpacesListFragment;->loadListings()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/airbnb/android/requests/RequestListener",
        "<",
        "Lcom/airbnb/android/requests/MySpacesRequest;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/SpacesListFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/SpacesListFragment;)V
    .registers 2

    .prologue
    .line 161
    iput-object p1, p0, Lcom/airbnb/android/fragments/SpacesListFragment$3;->this$0:Lcom/airbnb/android/fragments/SpacesListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 3
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 198
    iget-object v0, p0, Lcom/airbnb/android/fragments/SpacesListFragment$3;->this$0:Lcom/airbnb/android/fragments/SpacesListFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/SpacesListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 199
    iget-object v0, p0, Lcom/airbnb/android/fragments/SpacesListFragment$3;->this$0:Lcom/airbnb/android/fragments/SpacesListFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/SpacesListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/android/requests/AirbnbRequest;->toastGenericVolleyError(Landroid/content/Context;)V

    .line 201
    :cond_11
    return-void
.end method

.method public onResponse(Lcom/airbnb/android/requests/MySpacesRequest;)V
    .registers 11
    .param p1, "response"    # Lcom/airbnb/android/requests/MySpacesRequest;

    .prologue
    const/4 v8, 0x1

    .line 165
    iget-object v5, p0, Lcom/airbnb/android/fragments/SpacesListFragment$3;->this$0:Lcom/airbnb/android/fragments/SpacesListFragment;

    iget-object v6, p1, Lcom/airbnb/android/requests/MySpacesRequest;->listings:Ljava/util/ArrayList;

    # setter for: Lcom/airbnb/android/fragments/SpacesListFragment;->mListings:Ljava/util/List;
    invoke-static {v5, v6}, Lcom/airbnb/android/fragments/SpacesListFragment;->access$102(Lcom/airbnb/android/fragments/SpacesListFragment;Ljava/util/List;)Ljava/util/List;

    .line 166
    iget-object v5, p0, Lcom/airbnb/android/fragments/SpacesListFragment$3;->this$0:Lcom/airbnb/android/fragments/SpacesListFragment;

    # invokes: Lcom/airbnb/android/fragments/SpacesListFragment;->showSpinnerIfNeeded()V
    invoke-static {v5}, Lcom/airbnb/android/fragments/SpacesListFragment;->access$200(Lcom/airbnb/android/fragments/SpacesListFragment;)V

    .line 167
    iget-object v5, p0, Lcom/airbnb/android/fragments/SpacesListFragment$3;->this$0:Lcom/airbnb/android/fragments/SpacesListFragment;

    iget-object v6, p1, Lcom/airbnb/android/requests/MySpacesRequest;->listings:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Lcom/airbnb/android/fragments/SpacesListFragment;->setData(Ljava/util/List;)V

    .line 168
    const/4 v2, 0x0

    .line 169
    .local v2, "incomplete":I
    const/4 v3, 0x0

    .line 170
    .local v3, "listed":I
    iget-object v5, p1, Lcom/airbnb/android/requests/MySpacesRequest;->listings:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1c
    :goto_1c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/airbnb/android/models/Listing;

    .line 171
    .local v4, "listing":Lcom/airbnb/android/models/Listing;
    invoke-virtual {v4}, Lcom/airbnb/android/models/Listing;->isListed()Z

    move-result v5

    if-eqz v5, :cond_31

    .line 172
    add-int/lit8 v3, v3, 0x1

    .line 173
    goto :goto_1c

    .line 175
    :cond_31
    invoke-virtual {v4}, Lcom/airbnb/android/models/Listing;->getLocalStepsRemaining()I

    move-result v5

    if-lez v5, :cond_1c

    .line 176
    add-int/lit8 v2, v2, 0x1

    .line 177
    goto :goto_1c

    .line 180
    .end local v4    # "listing":Lcom/airbnb/android/models/Listing;
    :cond_3a
    iget-object v5, p0, Lcom/airbnb/android/fragments/SpacesListFragment$3;->this$0:Lcom/airbnb/android/fragments/SpacesListFragment;

    # getter for: Lcom/airbnb/android/fragments/SpacesListFragment;->mSoftSuspendedDialogShown:Z
    invoke-static {v5}, Lcom/airbnb/android/fragments/SpacesListFragment;->access$300(Lcom/airbnb/android/fragments/SpacesListFragment;)Z

    move-result v5

    if-nez v5, :cond_87

    invoke-virtual {p1}, Lcom/airbnb/android/requests/MySpacesRequest;->isSoftSuspended()Z

    move-result v5

    if-eqz v5, :cond_87

    .line 181
    iget-object v5, p0, Lcom/airbnb/android/fragments/SpacesListFragment$3;->this$0:Lcom/airbnb/android/fragments/SpacesListFragment;

    # setter for: Lcom/airbnb/android/fragments/SpacesListFragment;->mSoftSuspendedDialogShown:Z
    invoke-static {v5, v8}, Lcom/airbnb/android/fragments/SpacesListFragment;->access$302(Lcom/airbnb/android/fragments/SpacesListFragment;Z)Z

    .line 182
    iget-object v5, p0, Lcom/airbnb/android/fragments/SpacesListFragment$3;->this$0:Lcom/airbnb/android/fragments/SpacesListFragment;

    invoke-virtual {v5}, Lcom/airbnb/android/fragments/SpacesListFragment;->isResumed()Z

    move-result v5

    if-eqz v5, :cond_87

    iget-object v5, p0, Lcom/airbnb/android/fragments/SpacesListFragment$3;->this$0:Lcom/airbnb/android/fragments/SpacesListFragment;

    invoke-virtual {v5}, Lcom/airbnb/android/fragments/SpacesListFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v5

    const-class v6, Lcom/airbnb/android/fragments/HostStandardsDialog;

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v5

    if-nez v5, :cond_87

    .line 183
    iget-object v5, p0, Lcom/airbnb/android/fragments/SpacesListFragment$3;->this$0:Lcom/airbnb/android/fragments/SpacesListFragment;

    invoke-virtual {p1}, Lcom/airbnb/android/requests/MySpacesRequest;->getSoftSuspendedEducationTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/airbnb/android/requests/MySpacesRequest;->getSoftSuspendedEducationBody()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/airbnb/android/fragments/HostStandardsDialog;->newInstance(Landroid/support/v4/app/Fragment;Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/fragments/HostStandardsDialog;

    move-result-object v0

    .line 185
    .local v0, "f":Lcom/airbnb/android/fragments/HostStandardsDialog;
    invoke-static {}, Lcom/airbnb/android/analytics/ManageListingAnalytics;->trackHostStandardsImpressions()V

    .line 186
    iget-object v5, p0, Lcom/airbnb/android/fragments/SpacesListFragment$3;->this$0:Lcom/airbnb/android/fragments/SpacesListFragment;

    invoke-virtual {v5}, Lcom/airbnb/android/fragments/SpacesListFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v5

    const-class v6, Lcom/airbnb/android/fragments/HostStandardsDialog;

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lcom/airbnb/android/fragments/HostStandardsDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 189
    .end local v0    # "f":Lcom/airbnb/android/fragments/HostStandardsDialog;
    :cond_87
    const/16 v5, 0x8

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    sget-object v7, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->HostOnboarding:Lcom/airbnb/android/utils/MixPanelHelper$MixNames;

    iget-object v7, v7, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->name:Ljava/lang/String;

    aput-object v7, v5, v6

    const-string/jumbo v6, "general_nav"

    aput-object v6, v5, v8

    const/4 v6, 0x2

    const-string/jumbo v7, "spaces"

    aput-object v7, v5, v6

    const/4 v6, 0x3

    const-string/jumbo v7, "impressions"

    aput-object v7, v5, v6

    const/4 v6, 0x4

    iget-object v7, p1, Lcom/airbnb/android/requests/MySpacesRequest;->listings:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x6

    iget-object v7, p1, Lcom/airbnb/android/requests/MySpacesRequest;->listings:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int/2addr v7, v3

    sub-int/2addr v7, v2

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v5}, Lcom/airbnb/android/services/AirEventLogger;->track([Ljava/lang/String;)V

    .line 194
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 161
    check-cast p1, Lcom/airbnb/android/requests/MySpacesRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/fragments/SpacesListFragment$3;->onResponse(Lcom/airbnb/android/requests/MySpacesRequest;)V

    return-void
.end method
