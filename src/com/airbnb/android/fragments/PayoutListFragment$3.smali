.class Lcom/airbnb/android/fragments/PayoutListFragment$3;
.super Ljava/lang/Object;
.source "PayoutListFragment.java"

# interfaces
.implements Lcom/airbnb/android/requests/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/PayoutListFragment;->loadUsersPayoutMethods()V
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
        "Lcom/airbnb/android/requests/GetPayoutsRequest;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/PayoutListFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/PayoutListFragment;)V
    .registers 2

    .prologue
    .line 134
    iput-object p1, p0, Lcom/airbnb/android/fragments/PayoutListFragment$3;->this$0:Lcom/airbnb/android/fragments/PayoutListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 3
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 145
    iget-object v0, p0, Lcom/airbnb/android/fragments/PayoutListFragment$3;->this$0:Lcom/airbnb/android/fragments/PayoutListFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/PayoutListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/android/requests/AirbnbRequest;->toastGenericVolleyError(Landroid/content/Context;)V

    .line 146
    return-void
.end method

.method public onResponse(Lcom/airbnb/android/requests/GetPayoutsRequest;)V
    .registers 8
    .param p1, "response"    # Lcom/airbnb/android/requests/GetPayoutsRequest;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/airbnb/android/fragments/PayoutListFragment$3;->this$0:Lcom/airbnb/android/fragments/PayoutListFragment;

    # getter for: Lcom/airbnb/android/fragments/PayoutListFragment;->mLoaderListView:Lcom/airbnb/android/views/LoaderListView;
    invoke-static {v0}, Lcom/airbnb/android/fragments/PayoutListFragment;->access$000(Lcom/airbnb/android/fragments/PayoutListFragment;)Lcom/airbnb/android/views/LoaderListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/views/LoaderListView;->getListView()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/airbnb/android/fragments/PayoutListFragment$PayoutsAdapter;

    iget-object v2, p0, Lcom/airbnb/android/fragments/PayoutListFragment$3;->this$0:Lcom/airbnb/android/fragments/PayoutListFragment;

    iget-object v3, p0, Lcom/airbnb/android/fragments/PayoutListFragment$3;->this$0:Lcom/airbnb/android/fragments/PayoutListFragment;

    invoke-virtual {v3}, Lcom/airbnb/android/fragments/PayoutListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const v4, 0x7f03014e

    iget-object v5, p1, Lcom/airbnb/android/requests/GetPayoutsRequest;->payoutOptions:Ljava/util/List;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/airbnb/android/fragments/PayoutListFragment$PayoutsAdapter;-><init>(Lcom/airbnb/android/fragments/PayoutListFragment;Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 139
    iget-object v0, p0, Lcom/airbnb/android/fragments/PayoutListFragment$3;->this$0:Lcom/airbnb/android/fragments/PayoutListFragment;

    # getter for: Lcom/airbnb/android/fragments/PayoutListFragment;->mLoaderListView:Lcom/airbnb/android/views/LoaderListView;
    invoke-static {v0}, Lcom/airbnb/android/fragments/PayoutListFragment;->access$000(Lcom/airbnb/android/fragments/PayoutListFragment;)Lcom/airbnb/android/views/LoaderListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/views/LoaderListView;->finishLoader()V

    .line 140
    iget-object v0, p0, Lcom/airbnb/android/fragments/PayoutListFragment$3;->this$0:Lcom/airbnb/android/fragments/PayoutListFragment;

    iget-object v1, p1, Lcom/airbnb/android/requests/GetPayoutsRequest;->payoutOptions:Ljava/util/List;

    # setter for: Lcom/airbnb/android/fragments/PayoutListFragment;->mPayoutInfo:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/airbnb/android/fragments/PayoutListFragment;->access$102(Lcom/airbnb/android/fragments/PayoutListFragment;Ljava/util/List;)Ljava/util/List;

    .line 141
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 134
    check-cast p1, Lcom/airbnb/android/requests/GetPayoutsRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/fragments/PayoutListFragment$3;->onResponse(Lcom/airbnb/android/requests/GetPayoutsRequest;)V

    return-void
.end method
