.class Lcom/airbnb/android/fragments/TripsListFragment$1;
.super Ljava/lang/Object;
.source "TripsListFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/TripsListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/TripsListFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/TripsListFragment;)V
    .registers 2

    .prologue
    .line 87
    iput-object p1, p0, Lcom/airbnb/android/fragments/TripsListFragment$1;->this$0:Lcom/airbnb/android/fragments/TripsListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 10
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
    .line 90
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/airbnb/android/fragments/TripsListFragment$1;->this$0:Lcom/airbnb/android/fragments/TripsListFragment;

    # getter for: Lcom/airbnb/android/fragments/TripsListFragment;->mIsUpcoming:Z
    invoke-static {v1}, Lcom/airbnb/android/fragments/TripsListFragment;->access$000(Lcom/airbnb/android/fragments/TripsListFragment;)Z

    move-result v1

    if-eqz v1, :cond_66

    iget-object v1, p0, Lcom/airbnb/android/fragments/TripsListFragment$1;->this$0:Lcom/airbnb/android/fragments/TripsListFragment;

    # getter for: Lcom/airbnb/android/fragments/TripsListFragment;->mIsLocalCompanionEnabled:Z
    invoke-static {v1}, Lcom/airbnb/android/fragments/TripsListFragment;->access$100(Lcom/airbnb/android/fragments/TripsListFragment;)Z

    move-result v1

    if-eqz v1, :cond_66

    if-nez p3, :cond_66

    .line 92
    iget-object v1, p0, Lcom/airbnb/android/fragments/TripsListFragment$1;->this$0:Lcom/airbnb/android/fragments/TripsListFragment;

    # getter for: Lcom/airbnb/android/fragments/TripsListFragment;->mNextLocalCompanionCity:Ljava/lang/String;
    invoke-static {v1}, Lcom/airbnb/android/fragments/TripsListFragment;->access$200(Lcom/airbnb/android/fragments/TripsListFragment;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_28

    .line 93
    iget-object v1, p0, Lcom/airbnb/android/fragments/TripsListFragment$1;->this$0:Lcom/airbnb/android/fragments/TripsListFragment;

    iget-object v2, p0, Lcom/airbnb/android/fragments/TripsListFragment$1;->this$0:Lcom/airbnb/android/fragments/TripsListFragment;

    const v3, 0x7f0e0391

    invoke-virtual {v2, v3}, Lcom/airbnb/android/fragments/TripsListFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    # setter for: Lcom/airbnb/android/fragments/TripsListFragment;->mNextLocalCompanionCity:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/airbnb/android/fragments/TripsListFragment;->access$202(Lcom/airbnb/android/fragments/TripsListFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 96
    :cond_28
    iget-object v1, p0, Lcom/airbnb/android/fragments/TripsListFragment$1;->this$0:Lcom/airbnb/android/fragments/TripsListFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/TripsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/airbnb/android/fragments/TripsListFragment$1;->this$0:Lcom/airbnb/android/fragments/TripsListFragment;

    # getter for: Lcom/airbnb/android/fragments/TripsListFragment;->mNextLocalCompanionCity:Ljava/lang/String;
    invoke-static {v2}, Lcom/airbnb/android/fragments/TripsListFragment;->access$200(Lcom/airbnb/android/fragments/TripsListFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/airbnb/android/utils/SharedPrefsHelper;->shouldSeeCompanionOnboarding(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_50

    .line 97
    iget-object v1, p0, Lcom/airbnb/android/fragments/TripsListFragment$1;->this$0:Lcom/airbnb/android/fragments/TripsListFragment;

    iget-object v2, p0, Lcom/airbnb/android/fragments/TripsListFragment$1;->this$0:Lcom/airbnb/android/fragments/TripsListFragment;

    invoke-virtual {v2}, Lcom/airbnb/android/fragments/TripsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/airbnb/android/fragments/TripsListFragment$1;->this$0:Lcom/airbnb/android/fragments/TripsListFragment;

    # getter for: Lcom/airbnb/android/fragments/TripsListFragment;->mNextLocalCompanionCity:Ljava/lang/String;
    invoke-static {v3}, Lcom/airbnb/android/fragments/TripsListFragment;->access$200(Lcom/airbnb/android/fragments/TripsListFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/airbnb/android/activities/CompanionOnboardingActivity;->intentForMarket(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/airbnb/android/fragments/TripsListFragment;->startActivity(Landroid/content/Intent;)V

    .line 105
    :goto_4f
    return-void

    .line 99
    :cond_50
    iget-object v1, p0, Lcom/airbnb/android/fragments/TripsListFragment$1;->this$0:Lcom/airbnb/android/fragments/TripsListFragment;

    iget-object v2, p0, Lcom/airbnb/android/fragments/TripsListFragment$1;->this$0:Lcom/airbnb/android/fragments/TripsListFragment;

    invoke-virtual {v2}, Lcom/airbnb/android/fragments/TripsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/airbnb/android/fragments/TripsListFragment$1;->this$0:Lcom/airbnb/android/fragments/TripsListFragment;

    # getter for: Lcom/airbnb/android/fragments/TripsListFragment;->mNextLocalCompanionCity:Ljava/lang/String;
    invoke-static {v3}, Lcom/airbnb/android/fragments/TripsListFragment;->access$200(Lcom/airbnb/android/fragments/TripsListFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/airbnb/android/activities/LocalCompanionActivity;->intentForMarket(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/airbnb/android/fragments/TripsListFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_4f

    .line 102
    :cond_66
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/models/Reservation;

    .line 103
    .local v0, "reservation":Lcom/airbnb/android/models/Reservation;
    iget-object v1, p0, Lcom/airbnb/android/fragments/TripsListFragment$1;->this$0:Lcom/airbnb/android/fragments/TripsListFragment;

    # getter for: Lcom/airbnb/android/fragments/TripsListFragment;->mCallback:Lcom/airbnb/android/interfaces/OnReservationItemSelectedListener;
    invoke-static {v1}, Lcom/airbnb/android/fragments/TripsListFragment;->access$300(Lcom/airbnb/android/fragments/TripsListFragment;)Lcom/airbnb/android/interfaces/OnReservationItemSelectedListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/airbnb/android/interfaces/OnReservationItemSelectedListener;->onItemSelected(Lcom/airbnb/android/models/Reservation;)V

    goto :goto_4f
.end method
