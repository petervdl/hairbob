.class Lcom/airbnb/android/fragments/ROMyProfileContainerFragment$1;
.super Ljava/lang/Object;
.source "ROMyProfileContainerFragment.java"

# interfaces
.implements Lcom/airbnb/android/requests/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/ROMyProfileContainerFragment;->checkLogin()V
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
        "Lcom/airbnb/android/requests/GetActiveAccountRequest;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/ROMyProfileContainerFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/ROMyProfileContainerFragment;)V
    .registers 2

    .prologue
    .line 132
    iput-object p1, p0, Lcom/airbnb/android/fragments/ROMyProfileContainerFragment$1;->this$0:Lcom/airbnb/android/fragments/ROMyProfileContainerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 4
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROMyProfileContainerFragment$1;->this$0:Lcom/airbnb/android/fragments/ROMyProfileContainerFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/ROMyProfileContainerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/android/AirbnbApi;->getInstance(Landroid/content/Context;)Lcom/airbnb/android/AirbnbApi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/AirbnbApi;->isCurrentUserAuthorized()Z

    move-result v0

    if-nez v0, :cond_35

    .line 137
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROMyProfileContainerFragment$1;->this$0:Lcom/airbnb/android/fragments/ROMyProfileContainerFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/ROMyProfileContainerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/android/AirbnbApi;->getInstance(Landroid/content/Context;)Lcom/airbnb/android/AirbnbApi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/AirbnbApi;->invalidateSession()V

    .line 138
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROMyProfileContainerFragment$1;->this$0:Lcom/airbnb/android/fragments/ROMyProfileContainerFragment;

    iget-object v1, p0, Lcom/airbnb/android/fragments/ROMyProfileContainerFragment$1;->this$0:Lcom/airbnb/android/fragments/ROMyProfileContainerFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/ROMyProfileContainerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/airbnb/android/activities/SignInActivity;->intentForDefault(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/fragments/ROMyProfileContainerFragment;->startActivity(Landroid/content/Intent;)V

    .line 139
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROMyProfileContainerFragment$1;->this$0:Lcom/airbnb/android/fragments/ROMyProfileContainerFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/ROMyProfileContainerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 141
    :cond_35
    return-void
.end method

.method public onResponse(Lcom/airbnb/android/requests/GetActiveAccountRequest;)V
    .registers 2
    .param p1, "response"    # Lcom/airbnb/android/requests/GetActiveAccountRequest;

    .prologue
    .line 145
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 132
    check-cast p1, Lcom/airbnb/android/requests/GetActiveAccountRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/fragments/ROMyProfileContainerFragment$1;->onResponse(Lcom/airbnb/android/requests/GetActiveAccountRequest;)V

    return-void
.end method
