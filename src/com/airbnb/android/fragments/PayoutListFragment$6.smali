.class Lcom/airbnb/android/fragments/PayoutListFragment$6;
.super Ljava/lang/Object;
.source "PayoutListFragment.java"

# interfaces
.implements Lcom/airbnb/android/requests/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/PayoutListFragment;->deletePayout(JZ)V
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
        "Lcom/airbnb/android/requests/PayoutDeleteRequest;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/PayoutListFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/PayoutListFragment;)V
    .registers 2

    .prologue
    .line 289
    iput-object p1, p0, Lcom/airbnb/android/fragments/PayoutListFragment$6;->this$0:Lcom/airbnb/android/fragments/PayoutListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 3
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 299
    iget-object v0, p0, Lcom/airbnb/android/fragments/PayoutListFragment$6;->this$0:Lcom/airbnb/android/fragments/PayoutListFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/PayoutListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/android/requests/AirbnbRequest;->toastGenericVolleyError(Landroid/content/Context;)V

    .line 300
    iget-object v0, p0, Lcom/airbnb/android/fragments/PayoutListFragment$6;->this$0:Lcom/airbnb/android/fragments/PayoutListFragment;

    # getter for: Lcom/airbnb/android/fragments/PayoutListFragment;->mLoaderListView:Lcom/airbnb/android/views/LoaderListView;
    invoke-static {v0}, Lcom/airbnb/android/fragments/PayoutListFragment;->access$000(Lcom/airbnb/android/fragments/PayoutListFragment;)Lcom/airbnb/android/views/LoaderListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/views/LoaderListView;->finishLoaderImmediate()V

    .line 301
    return-void
.end method

.method public onResponse(Lcom/airbnb/android/requests/PayoutDeleteRequest;)V
    .registers 3
    .param p1, "response"    # Lcom/airbnb/android/requests/PayoutDeleteRequest;

    .prologue
    .line 292
    iget-object v0, p0, Lcom/airbnb/android/fragments/PayoutListFragment$6;->this$0:Lcom/airbnb/android/fragments/PayoutListFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/PayoutListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 293
    iget-object v0, p0, Lcom/airbnb/android/fragments/PayoutListFragment$6;->this$0:Lcom/airbnb/android/fragments/PayoutListFragment;

    # invokes: Lcom/airbnb/android/fragments/PayoutListFragment;->loadUsersPayoutMethods()V
    invoke-static {v0}, Lcom/airbnb/android/fragments/PayoutListFragment;->access$600(Lcom/airbnb/android/fragments/PayoutListFragment;)V

    .line 295
    :cond_d
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 289
    check-cast p1, Lcom/airbnb/android/requests/PayoutDeleteRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/fragments/PayoutListFragment$6;->onResponse(Lcom/airbnb/android/requests/PayoutDeleteRequest;)V

    return-void
.end method
