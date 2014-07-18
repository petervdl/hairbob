.class Lcom/airbnb/android/fragments/SearchFragment$3;
.super Ljava/lang/Object;
.source "SearchFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/SearchFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/SearchFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/SearchFragment;)V
    .registers 2

    .prologue
    .line 202
    iput-object p1, p0, Lcom/airbnb/android/fragments/SearchFragment$3;->this$0:Lcom/airbnb/android/fragments/SearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 206
    iget-object v3, p0, Lcom/airbnb/android/fragments/SearchFragment$3;->this$0:Lcom/airbnb/android/fragments/SearchFragment;

    invoke-virtual {v3}, Lcom/airbnb/android/fragments/SearchFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    const-string/jumbo v4, "dialog"

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/DialogFragment;

    .line 207
    .local v0, "currentDialog":Landroid/support/v4/app/DialogFragment;
    if-nez v0, :cond_67

    .line 208
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "Search"

    aput-object v4, v3, v2

    const-string/jumbo v4, "click_filter_results"

    aput-object v4, v3, v1

    invoke-static {v3}, Lcom/airbnb/android/services/AirEventLogger;->track([Ljava/lang/String;)V

    .line 209
    iget-object v3, p0, Lcom/airbnb/android/fragments/SearchFragment$3;->this$0:Lcom/airbnb/android/fragments/SearchFragment;

    iget-object v3, v3, Lcom/airbnb/android/fragments/SearchFragment;->mBrowsableViewPager:Lcom/airbnb/android/views/BrowsableViewPager;

    if-eqz v3, :cond_60

    .line 210
    iget-object v3, p0, Lcom/airbnb/android/fragments/SearchFragment$3;->this$0:Lcom/airbnb/android/fragments/SearchFragment;

    iget-object v3, v3, Lcom/airbnb/android/fragments/SearchFragment;->mBrowsableViewPager:Lcom/airbnb/android/views/BrowsableViewPager;

    invoke-virtual {v3}, Lcom/airbnb/android/views/BrowsableViewPager;->getCurrentItem()I

    move-result v3

    sget-object v4, Lcom/airbnb/android/adapters/BrowsableSectionsAdapter$BrowsableSection;->Map:Lcom/airbnb/android/adapters/BrowsableSectionsAdapter$BrowsableSection;

    invoke-virtual {v4}, Lcom/airbnb/android/adapters/BrowsableSectionsAdapter$BrowsableSection;->ordinal()I

    move-result v4

    if-ne v3, v4, :cond_5a

    .line 211
    .local v1, "isMapTab":Z
    :goto_3a
    if-eqz v1, :cond_5c

    const-string/jumbo v2, "map_filters_click"

    :goto_3f
    invoke-static {v2, v5}, Lcom/airbnb/android/analytics/SearchAnalytics;->trackSearchResultsAction(Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)V

    .line 215
    .end local v1    # "isMapTab":Z
    :goto_42
    const-string/jumbo v2, "impression"

    invoke-static {v2, v5}, Lcom/airbnb/android/analytics/SearchAnalytics;->trackFiltersAction(Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)V

    .line 216
    iget-object v2, p0, Lcom/airbnb/android/fragments/SearchFragment$3;->this$0:Lcom/airbnb/android/fragments/SearchFragment;

    iget-object v3, p0, Lcom/airbnb/android/fragments/SearchFragment$3;->this$0:Lcom/airbnb/android/fragments/SearchFragment;

    invoke-virtual {v3}, Lcom/airbnb/android/fragments/SearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/airbnb/android/activities/SearchFilterActivity;->intentForDefault(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v3

    const/16 v4, 0xea

    invoke-virtual {v2, v3, v4}, Lcom/airbnb/android/fragments/SearchFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 221
    :cond_59
    :goto_59
    return-void

    :cond_5a
    move v1, v2

    .line 210
    goto :goto_3a

    .line 211
    .restart local v1    # "isMapTab":Z
    :cond_5c
    const-string/jumbo v2, "list_filters_click"

    goto :goto_3f

    .line 213
    .end local v1    # "isMapTab":Z
    :cond_60
    const-string/jumbo v2, "tablet_filters_click"

    invoke-static {v2, v5}, Lcom/airbnb/android/analytics/SearchAnalytics;->trackSearchResultsAction(Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)V

    goto :goto_42

    .line 218
    :cond_67
    if-eqz v0, :cond_59

    invoke-virtual {v0}, Landroid/support/v4/app/DialogFragment;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_59

    .line 219
    invoke-virtual {v0}, Landroid/support/v4/app/DialogFragment;->dismiss()V

    goto :goto_59
.end method
