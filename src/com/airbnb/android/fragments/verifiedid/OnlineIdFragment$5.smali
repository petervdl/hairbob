.class Lcom/airbnb/android/fragments/verifiedid/OnlineIdFragment$5;
.super Ljava/lang/Object;
.source "OnlineIdFragment.java"

# interfaces
.implements Lcom/airbnb/android/requests/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/verifiedid/OnlineIdFragment;->onSignInSuccess(Lcom/airbnb/android/utils/SignInUtil$Service;)V
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
.field final synthetic this$0:Lcom/airbnb/android/fragments/verifiedid/OnlineIdFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/verifiedid/OnlineIdFragment;)V
    .registers 2

    .prologue
    .line 265
    iput-object p1, p0, Lcom/airbnb/android/fragments/verifiedid/OnlineIdFragment$5;->this$0:Lcom/airbnb/android/fragments/verifiedid/OnlineIdFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 3
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 276
    iget-object v0, p0, Lcom/airbnb/android/fragments/verifiedid/OnlineIdFragment$5;->this$0:Lcom/airbnb/android/fragments/verifiedid/OnlineIdFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/verifiedid/OnlineIdFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 277
    iget-object v0, p0, Lcom/airbnb/android/fragments/verifiedid/OnlineIdFragment$5;->this$0:Lcom/airbnb/android/fragments/verifiedid/OnlineIdFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/verifiedid/OnlineIdFragment;->onSignInError()V

    .line 279
    :cond_d
    return-void
.end method

.method public onResponse(Lcom/airbnb/android/requests/AuthorizeServiceRequest;)V
    .registers 3
    .param p1, "response"    # Lcom/airbnb/android/requests/AuthorizeServiceRequest;

    .prologue
    .line 269
    iget-object v0, p0, Lcom/airbnb/android/fragments/verifiedid/OnlineIdFragment$5;->this$0:Lcom/airbnb/android/fragments/verifiedid/OnlineIdFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/verifiedid/OnlineIdFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 270
    iget-object v0, p0, Lcom/airbnb/android/fragments/verifiedid/OnlineIdFragment$5;->this$0:Lcom/airbnb/android/fragments/verifiedid/OnlineIdFragment;

    # invokes: Lcom/airbnb/android/fragments/verifiedid/OnlineIdFragment;->setOnlineIdRetries()V
    invoke-static {v0}, Lcom/airbnb/android/fragments/verifiedid/OnlineIdFragment;->access$400(Lcom/airbnb/android/fragments/verifiedid/OnlineIdFragment;)V

    .line 272
    :cond_d
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 265
    check-cast p1, Lcom/airbnb/android/requests/AuthorizeServiceRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/fragments/verifiedid/OnlineIdFragment$5;->onResponse(Lcom/airbnb/android/requests/AuthorizeServiceRequest;)V

    return-void
.end method
