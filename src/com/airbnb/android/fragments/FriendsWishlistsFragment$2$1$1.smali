.class Lcom/airbnb/android/fragments/FriendsWishlistsFragment$2$1$1;
.super Ljava/lang/Object;
.source "FriendsWishlistsFragment.java"

# interfaces
.implements Lcom/airbnb/android/requests/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/FriendsWishlistsFragment$2$1;->onSignInSuccess(Lcom/airbnb/android/utils/SignInUtil$Service;)V
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
        "Lcom/airbnb/android/requests/AuthorizeServiceRequest;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Lcom/airbnb/android/fragments/FriendsWishlistsFragment$2$1;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/FriendsWishlistsFragment$2$1;)V
    .registers 2

    .prologue
    .line 139
    iput-object p1, p0, Lcom/airbnb/android/fragments/FriendsWishlistsFragment$2$1$1;->this$2:Lcom/airbnb/android/fragments/FriendsWishlistsFragment$2$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 5
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 150
    iget-object v0, p0, Lcom/airbnb/android/fragments/FriendsWishlistsFragment$2$1$1;->this$2:Lcom/airbnb/android/fragments/FriendsWishlistsFragment$2$1;

    iget-object v0, v0, Lcom/airbnb/android/fragments/FriendsWishlistsFragment$2$1;->this$1:Lcom/airbnb/android/fragments/FriendsWishlistsFragment$2;

    iget-object v0, v0, Lcom/airbnb/android/fragments/FriendsWishlistsFragment$2;->this$0:Lcom/airbnb/android/fragments/FriendsWishlistsFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/FriendsWishlistsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_2a

    .line 151
    iget-object v0, p0, Lcom/airbnb/android/fragments/FriendsWishlistsFragment$2$1$1;->this$2:Lcom/airbnb/android/fragments/FriendsWishlistsFragment$2$1;

    iget-object v0, v0, Lcom/airbnb/android/fragments/FriendsWishlistsFragment$2$1;->this$1:Lcom/airbnb/android/fragments/FriendsWishlistsFragment$2;

    iget-object v0, v0, Lcom/airbnb/android/fragments/FriendsWishlistsFragment$2;->this$0:Lcom/airbnb/android/fragments/FriendsWishlistsFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/FriendsWishlistsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0e01ee

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 152
    iget-object v0, p0, Lcom/airbnb/android/fragments/FriendsWishlistsFragment$2$1$1;->this$2:Lcom/airbnb/android/fragments/FriendsWishlistsFragment$2$1;

    iget-object v0, v0, Lcom/airbnb/android/fragments/FriendsWishlistsFragment$2$1;->this$1:Lcom/airbnb/android/fragments/FriendsWishlistsFragment$2;

    iget-object v0, v0, Lcom/airbnb/android/fragments/FriendsWishlistsFragment$2;->this$0:Lcom/airbnb/android/fragments/FriendsWishlistsFragment;

    # invokes: Lcom/airbnb/android/fragments/FriendsWishlistsFragment;->hideLoaderAndShowEmptyResults()V
    invoke-static {v0}, Lcom/airbnb/android/fragments/FriendsWishlistsFragment;->access$200(Lcom/airbnb/android/fragments/FriendsWishlistsFragment;)V

    .line 154
    :cond_2a
    return-void
.end method

.method public onResponse(Lcom/airbnb/android/requests/AuthorizeServiceRequest;)V
    .registers 3
    .param p1, "response"    # Lcom/airbnb/android/requests/AuthorizeServiceRequest;

    .prologue
    .line 143
    iget-object v0, p0, Lcom/airbnb/android/fragments/FriendsWishlistsFragment$2$1$1;->this$2:Lcom/airbnb/android/fragments/FriendsWishlistsFragment$2$1;

    iget-object v0, v0, Lcom/airbnb/android/fragments/FriendsWishlistsFragment$2$1;->this$1:Lcom/airbnb/android/fragments/FriendsWishlistsFragment$2;

    iget-object v0, v0, Lcom/airbnb/android/fragments/FriendsWishlistsFragment$2;->this$0:Lcom/airbnb/android/fragments/FriendsWishlistsFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/FriendsWishlistsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 144
    iget-object v0, p0, Lcom/airbnb/android/fragments/FriendsWishlistsFragment$2$1$1;->this$2:Lcom/airbnb/android/fragments/FriendsWishlistsFragment$2$1;

    iget-object v0, v0, Lcom/airbnb/android/fragments/FriendsWishlistsFragment$2$1;->this$1:Lcom/airbnb/android/fragments/FriendsWishlistsFragment$2;

    iget-object v0, v0, Lcom/airbnb/android/fragments/FriendsWishlistsFragment$2;->this$0:Lcom/airbnb/android/fragments/FriendsWishlistsFragment;

    # invokes: Lcom/airbnb/android/fragments/FriendsWishlistsFragment;->loadListings()V
    invoke-static {v0}, Lcom/airbnb/android/fragments/FriendsWishlistsFragment;->access$100(Lcom/airbnb/android/fragments/FriendsWishlistsFragment;)V

    .line 146
    :cond_15
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 139
    check-cast p1, Lcom/airbnb/android/requests/AuthorizeServiceRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/fragments/FriendsWishlistsFragment$2$1$1;->onResponse(Lcom/airbnb/android/requests/AuthorizeServiceRequest;)V

    return-void
.end method
