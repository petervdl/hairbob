.class Lcom/airbnb/android/fragments/TripsListFragment$2;
.super Ljava/lang/Object;
.source "TripsListFragment.java"

# interfaces
.implements Lcom/airbnb/android/requests/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/TripsListFragment;->getReservations()V
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
        "Lcom/airbnb/android/requests/GuestReservationsRequest;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/TripsListFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/TripsListFragment;)V
    .registers 2

    .prologue
    .line 138
    iput-object p1, p0, Lcom/airbnb/android/fragments/TripsListFragment$2;->this$0:Lcom/airbnb/android/fragments/TripsListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 4
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 154
    iget-object v0, p0, Lcom/airbnb/android/fragments/TripsListFragment$2;->this$0:Lcom/airbnb/android/fragments/TripsListFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/TripsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/android/requests/AirbnbRequest;->toastGenericVolleyError(Landroid/content/Context;)V

    .line 155
    iget-object v0, p0, Lcom/airbnb/android/fragments/TripsListFragment$2;->this$0:Lcom/airbnb/android/fragments/TripsListFragment;

    # getter for: Lcom/airbnb/android/fragments/TripsListFragment;->mLoaderListView:Lcom/airbnb/android/views/LoaderListView;
    invoke-static {v0}, Lcom/airbnb/android/fragments/TripsListFragment;->access$400(Lcom/airbnb/android/fragments/TripsListFragment;)Lcom/airbnb/android/views/LoaderListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/views/LoaderListView;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 156
    iget-object v0, p0, Lcom/airbnb/android/fragments/TripsListFragment$2;->this$0:Lcom/airbnb/android/fragments/TripsListFragment;

    # getter for: Lcom/airbnb/android/fragments/TripsListFragment;->mLoaderListView:Lcom/airbnb/android/views/LoaderListView;
    invoke-static {v0}, Lcom/airbnb/android/fragments/TripsListFragment;->access$400(Lcom/airbnb/android/fragments/TripsListFragment;)Lcom/airbnb/android/views/LoaderListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/LoaderListView;->showEmptyResults(Z)V

    .line 157
    return-void
.end method

.method public onResponse(Lcom/airbnb/android/requests/GuestReservationsRequest;)V
    .registers 4
    .param p1, "response"    # Lcom/airbnb/android/requests/GuestReservationsRequest;

    .prologue
    .line 142
    iget-object v0, p0, Lcom/airbnb/android/fragments/TripsListFragment$2;->this$0:Lcom/airbnb/android/fragments/TripsListFragment;

    # getter for: Lcom/airbnb/android/fragments/TripsListFragment;->mLoaderListView:Lcom/airbnb/android/views/LoaderListView;
    invoke-static {v0}, Lcom/airbnb/android/fragments/TripsListFragment;->access$400(Lcom/airbnb/android/fragments/TripsListFragment;)Lcom/airbnb/android/views/LoaderListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/views/LoaderListView;->finishLoader()V

    .line 144
    iget-object v0, p1, Lcom/airbnb/android/requests/GuestReservationsRequest;->reservations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 145
    iget-object v0, p0, Lcom/airbnb/android/fragments/TripsListFragment$2;->this$0:Lcom/airbnb/android/fragments/TripsListFragment;

    # getter for: Lcom/airbnb/android/fragments/TripsListFragment;->mLoaderListView:Lcom/airbnb/android/views/LoaderListView;
    invoke-static {v0}, Lcom/airbnb/android/fragments/TripsListFragment;->access$400(Lcom/airbnb/android/fragments/TripsListFragment;)Lcom/airbnb/android/views/LoaderListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/LoaderListView;->showEmptyResults(Z)V

    .line 150
    :goto_1b
    return-void

    .line 147
    :cond_1c
    iget-object v0, p0, Lcom/airbnb/android/fragments/TripsListFragment$2;->this$0:Lcom/airbnb/android/fragments/TripsListFragment;

    # getter for: Lcom/airbnb/android/fragments/TripsListFragment;->mLoaderListView:Lcom/airbnb/android/views/LoaderListView;
    invoke-static {v0}, Lcom/airbnb/android/fragments/TripsListFragment;->access$400(Lcom/airbnb/android/fragments/TripsListFragment;)Lcom/airbnb/android/views/LoaderListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/LoaderListView;->showEmptyResults(Z)V

    .line 148
    iget-object v0, p0, Lcom/airbnb/android/fragments/TripsListFragment$2;->this$0:Lcom/airbnb/android/fragments/TripsListFragment;

    iget-object v1, p1, Lcom/airbnb/android/requests/GuestReservationsRequest;->reservations:Ljava/util/List;

    # invokes: Lcom/airbnb/android/fragments/TripsListFragment;->setupAdapter(Ljava/util/List;)V
    invoke-static {v0, v1}, Lcom/airbnb/android/fragments/TripsListFragment;->access$500(Lcom/airbnb/android/fragments/TripsListFragment;Ljava/util/List;)V

    goto :goto_1b
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 138
    check-cast p1, Lcom/airbnb/android/requests/GuestReservationsRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/fragments/TripsListFragment$2;->onResponse(Lcom/airbnb/android/requests/GuestReservationsRequest;)V

    return-void
.end method
