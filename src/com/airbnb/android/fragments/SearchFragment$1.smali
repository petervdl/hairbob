.class Lcom/airbnb/android/fragments/SearchFragment$1;
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
    .line 177
    iput-object p1, p0, Lcom/airbnb/android/fragments/SearchFragment$1;->this$0:Lcom/airbnb/android/fragments/SearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 180
    iget-object v0, p0, Lcom/airbnb/android/fragments/SearchFragment$1;->this$0:Lcom/airbnb/android/fragments/SearchFragment;

    const/4 v1, 0x1

    # setter for: Lcom/airbnb/android/fragments/SearchFragment;->mShouldNotChangeState:Z
    invoke-static {v0, v1}, Lcom/airbnb/android/fragments/SearchFragment;->access$002(Lcom/airbnb/android/fragments/SearchFragment;Z)Z

    .line 181
    iget-object v0, p0, Lcom/airbnb/android/fragments/SearchFragment$1;->this$0:Lcom/airbnb/android/fragments/SearchFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/SearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/android/persist/LmbAirLocationStore;->getClosestAirLocation(Landroid/content/Context;)Lcom/airbnb/android/models/AirLocation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/models/AirLocation;->getSearchTerm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/android/analytics/SearchAnalytics;->trackOpenLmb(Ljava/lang/String;)V

    .line 182
    iget-object v0, p0, Lcom/airbnb/android/fragments/SearchFragment$1;->this$0:Lcom/airbnb/android/fragments/SearchFragment;

    iget-object v1, p0, Lcom/airbnb/android/fragments/SearchFragment$1;->this$0:Lcom/airbnb/android/fragments/SearchFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/SearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/airbnb/android/activities/LastMinuteBookingSearchActivity;->intentForDefault(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/fragments/SearchFragment;->startActivity(Landroid/content/Intent;)V

    .line 183
    return-void
.end method