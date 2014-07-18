.class Lcom/airbnb/android/fragments/FriendsWishlistsFragment$2$1;
.super Ljava/lang/Object;
.source "FriendsWishlistsFragment.java"

# interfaces
.implements Lcom/airbnb/android/utils/SignInUtil$SignInListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/FriendsWishlistsFragment$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/airbnb/android/fragments/FriendsWishlistsFragment$2;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/FriendsWishlistsFragment$2;)V
    .registers 2

    .prologue
    .line 118
    iput-object p1, p0, Lcom/airbnb/android/fragments/FriendsWishlistsFragment$2$1;->this$1:Lcom/airbnb/android/fragments/FriendsWishlistsFragment$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/airbnb/android/fragments/FriendsWishlistsFragment$2$1;->this$1:Lcom/airbnb/android/fragments/FriendsWishlistsFragment$2;

    iget-object v0, v0, Lcom/airbnb/android/fragments/FriendsWishlistsFragment$2;->this$0:Lcom/airbnb/android/fragments/FriendsWishlistsFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/FriendsWishlistsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    return-object v0
.end method

.method public getHostingActivity()Landroid/app/Activity;
    .registers 2

    .prologue
    .line 167
    iget-object v0, p0, Lcom/airbnb/android/fragments/FriendsWishlistsFragment$2$1;->this$1:Lcom/airbnb/android/fragments/FriendsWishlistsFragment$2;

    iget-object v0, v0, Lcom/airbnb/android/fragments/FriendsWishlistsFragment$2;->this$0:Lcom/airbnb/android/fragments/FriendsWishlistsFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/FriendsWishlistsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    return-object v0
.end method

.method public onCallbackResponse(ZLjava/lang/String;)V
    .registers 3
    .param p1, "success"    # Z
    .param p2, "errorMessage"    # Ljava/lang/String;

    .prologue
    .line 133
    return-void
.end method

.method public onSignInError()V
    .registers 4

    .prologue
    .line 161
    iget-object v0, p0, Lcom/airbnb/android/fragments/FriendsWishlistsFragment$2$1;->this$1:Lcom/airbnb/android/fragments/FriendsWishlistsFragment$2;

    iget-object v0, v0, Lcom/airbnb/android/fragments/FriendsWishlistsFragment$2;->this$0:Lcom/airbnb/android/fragments/FriendsWishlistsFragment;

    # invokes: Lcom/airbnb/android/fragments/FriendsWishlistsFragment;->hideLoaderAndShowEmptyResults()V
    invoke-static {v0}, Lcom/airbnb/android/fragments/FriendsWishlistsFragment;->access$200(Lcom/airbnb/android/fragments/FriendsWishlistsFragment;)V

    .line 162
    iget-object v0, p0, Lcom/airbnb/android/fragments/FriendsWishlistsFragment$2$1;->this$1:Lcom/airbnb/android/fragments/FriendsWishlistsFragment$2;

    iget-object v0, v0, Lcom/airbnb/android/fragments/FriendsWishlistsFragment$2;->this$0:Lcom/airbnb/android/fragments/FriendsWishlistsFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/FriendsWishlistsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0e01ee

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 163
    return-void
.end method

.method public onSignInSuccess(Lcom/airbnb/android/utils/SignInUtil$Service;)V
    .registers 6
    .param p1, "service"    # Lcom/airbnb/android/utils/SignInUtil$Service;

    .prologue
    .line 137
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    .line 138
    .local v0, "session":Lcom/facebook/Session;
    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Lcom/facebook/Session;->isOpened()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 139
    const/4 v1, 0x0

    invoke-virtual {v0}, Lcom/facebook/Session;->getAccessToken()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/airbnb/android/fragments/FriendsWishlistsFragment$2$1$1;

    invoke-direct {v3, p0}, Lcom/airbnb/android/fragments/FriendsWishlistsFragment$2$1$1;-><init>(Lcom/airbnb/android/fragments/FriendsWishlistsFragment$2$1;)V

    invoke-static {v1, v2, v3}, Lcom/airbnb/android/requests/AuthorizeServiceRequest;->forFacebook(ZLjava/lang/String;Lcom/airbnb/android/requests/RequestListener;)Lcom/airbnb/android/requests/AuthorizeServiceRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/android/requests/AuthorizeServiceRequest;->execute()V

    .line 157
    :cond_1d
    return-void
.end method

.method public showRequestedPermissions(Lcom/airbnb/android/utils/SignInUtil$Service;Landroid/content/Intent;)V
    .registers 3
    .param p1, "service"    # Lcom/airbnb/android/utils/SignInUtil$Service;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 128
    return-void
.end method
