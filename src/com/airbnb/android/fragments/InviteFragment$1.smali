.class Lcom/airbnb/android/fragments/InviteFragment$1;
.super Ljava/lang/Object;
.source "InviteFragment.java"

# interfaces
.implements Lcom/airbnb/android/requests/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/InviteFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
        "Lcom/airbnb/android/requests/GetUserReferralInfoRequest;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/InviteFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/InviteFragment;)V
    .registers 2

    .prologue
    .line 149
    iput-object p1, p0, Lcom/airbnb/android/fragments/InviteFragment$1;->this$0:Lcom/airbnb/android/fragments/InviteFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 3
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 176
    iget-object v0, p0, Lcom/airbnb/android/fragments/InviteFragment$1;->this$0:Lcom/airbnb/android/fragments/InviteFragment;

    iget-object v0, v0, Lcom/airbnb/android/fragments/InviteFragment;->mLoaderFrame:Lcom/airbnb/android/views/LoaderFrame;

    invoke-virtual {v0}, Lcom/airbnb/android/views/LoaderFrame;->finish()V

    .line 177
    iget-object v0, p0, Lcom/airbnb/android/fragments/InviteFragment$1;->this$0:Lcom/airbnb/android/fragments/InviteFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/InviteFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/android/requests/AirbnbRequest;->toastGenericVolleyError(Landroid/content/Context;)V

    .line 178
    return-void
.end method

.method public onResponse(Lcom/airbnb/android/requests/GetUserReferralInfoRequest;)V
    .registers 6
    .param p1, "response"    # Lcom/airbnb/android/requests/GetUserReferralInfoRequest;

    .prologue
    .line 153
    iget-object v2, p0, Lcom/airbnb/android/fragments/InviteFragment$1;->this$0:Lcom/airbnb/android/fragments/InviteFragment;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lcom/airbnb/android/fragments/InviteFragment;->mPendingReferrees:Ljava/util/List;

    .line 154
    iget-object v2, p0, Lcom/airbnb/android/fragments/InviteFragment$1;->this$0:Lcom/airbnb/android/fragments/InviteFragment;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lcom/airbnb/android/fragments/InviteFragment;->mEarnedReferrees:Ljava/util/List;

    .line 156
    iget-object v2, p1, Lcom/airbnb/android/requests/GetUserReferralInfoRequest;->referrees:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/models/Referree;

    .line 157
    .local v1, "referree":Lcom/airbnb/android/models/Referree;
    invoke-virtual {v1}, Lcom/airbnb/android/models/Referree;->getStatus()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3e

    invoke-virtual {v1}, Lcom/airbnb/android/models/Referree;->getStatus()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_46

    .line 158
    :cond_3e
    iget-object v2, p0, Lcom/airbnb/android/fragments/InviteFragment$1;->this$0:Lcom/airbnb/android/fragments/InviteFragment;

    iget-object v2, v2, Lcom/airbnb/android/fragments/InviteFragment;->mPendingReferrees:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_18

    .line 160
    :cond_46
    iget-object v2, p0, Lcom/airbnb/android/fragments/InviteFragment$1;->this$0:Lcom/airbnb/android/fragments/InviteFragment;

    iget-object v2, v2, Lcom/airbnb/android/fragments/InviteFragment;->mEarnedReferrees:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_18

    .line 164
    .end local v1    # "referree":Lcom/airbnb/android/models/Referree;
    :cond_4e
    iget-object v2, p0, Lcom/airbnb/android/fragments/InviteFragment$1;->this$0:Lcom/airbnb/android/fragments/InviteFragment;

    iget-object v3, p1, Lcom/airbnb/android/requests/GetUserReferralInfoRequest;->referralUrl:Ljava/lang/String;

    # setter for: Lcom/airbnb/android/fragments/InviteFragment;->mReferralUrl:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/airbnb/android/fragments/InviteFragment;->access$002(Lcom/airbnb/android/fragments/InviteFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 165
    iget-object v2, p0, Lcom/airbnb/android/fragments/InviteFragment$1;->this$0:Lcom/airbnb/android/fragments/InviteFragment;

    iget-object v3, p1, Lcom/airbnb/android/requests/GetUserReferralInfoRequest;->smsMessage:Ljava/lang/String;

    # setter for: Lcom/airbnb/android/fragments/InviteFragment;->mSmsMessage:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/airbnb/android/fragments/InviteFragment;->access$102(Lcom/airbnb/android/fragments/InviteFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 166
    iget-object v2, p0, Lcom/airbnb/android/fragments/InviteFragment$1;->this$0:Lcom/airbnb/android/fragments/InviteFragment;

    iget-object v3, p1, Lcom/airbnb/android/requests/GetUserReferralInfoRequest;->offerReferrerCreditHost:Ljava/lang/String;

    # setter for: Lcom/airbnb/android/fragments/InviteFragment;->mOfferReferrerCreditHost:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/airbnb/android/fragments/InviteFragment;->access$202(Lcom/airbnb/android/fragments/InviteFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 167
    iget-object v2, p0, Lcom/airbnb/android/fragments/InviteFragment$1;->this$0:Lcom/airbnb/android/fragments/InviteFragment;

    iget-object v3, p1, Lcom/airbnb/android/requests/GetUserReferralInfoRequest;->offerReferrerCreditGuest:Ljava/lang/String;

    # setter for: Lcom/airbnb/android/fragments/InviteFragment;->mOfferReferrerCreditGuest:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/airbnb/android/fragments/InviteFragment;->access$302(Lcom/airbnb/android/fragments/InviteFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 169
    iget-object v2, p0, Lcom/airbnb/android/fragments/InviteFragment$1;->this$0:Lcom/airbnb/android/fragments/InviteFragment;

    # invokes: Lcom/airbnb/android/fragments/InviteFragment;->setupViews()V
    invoke-static {v2}, Lcom/airbnb/android/fragments/InviteFragment;->access$400(Lcom/airbnb/android/fragments/InviteFragment;)V

    .line 171
    iget-object v2, p0, Lcom/airbnb/android/fragments/InviteFragment$1;->this$0:Lcom/airbnb/android/fragments/InviteFragment;

    iget-object v2, v2, Lcom/airbnb/android/fragments/InviteFragment;->mLoaderFrame:Lcom/airbnb/android/views/LoaderFrame;

    invoke-virtual {v2}, Lcom/airbnb/android/views/LoaderFrame;->finish()V

    .line 172
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 149
    check-cast p1, Lcom/airbnb/android/requests/GetUserReferralInfoRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/fragments/InviteFragment$1;->onResponse(Lcom/airbnb/android/requests/GetUserReferralInfoRequest;)V

    return-void
.end method
