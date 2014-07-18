.class Lcom/airbnb/android/fragments/ContactsFragment$3;
.super Ljava/lang/Object;
.source "ContactsFragment.java"

# interfaces
.implements Lcom/airbnb/android/requests/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/ContactsFragment;->sendReferralMessage()V
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
        "Lcom/airbnb/android/fragments/ContactsFragment$SendReferralsToServerRequest;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/ContactsFragment;

.field final synthetic val$progressDialog:Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/ContactsFragment;Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;)V
    .registers 3

    .prologue
    .line 299
    iput-object p1, p0, Lcom/airbnb/android/fragments/ContactsFragment$3;->this$0:Lcom/airbnb/android/fragments/ContactsFragment;

    iput-object p2, p0, Lcom/airbnb/android/fragments/ContactsFragment$3;->val$progressDialog:Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 5
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 311
    const-string/jumbo v0, "failure"

    iget-object v1, p0, Lcom/airbnb/android/fragments/ContactsFragment$3;->this$0:Lcom/airbnb/android/fragments/ContactsFragment;

    # getter for: Lcom/airbnb/android/fragments/ContactsFragment;->mSelectedContacts:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/airbnb/android/fragments/ContactsFragment;->access$000(Lcom/airbnb/android/fragments/ContactsFragment;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/airbnb/android/fragments/ContactsFragment$3;->this$0:Lcom/airbnb/android/fragments/ContactsFragment;

    # getter for: Lcom/airbnb/android/fragments/ContactsFragment;->mSelectedRecommendedContacts:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/airbnb/android/fragments/ContactsFragment;->access$100(Lcom/airbnb/android/fragments/ContactsFragment;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/airbnb/android/analytics/ReferralsAnalytics;->trackSendInvites(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    iget-object v0, p0, Lcom/airbnb/android/fragments/ContactsFragment$3;->this$0:Lcom/airbnb/android/fragments/ContactsFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/ContactsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/android/requests/AirbnbRequest;->toastGenericVolleyError(Landroid/content/Context;)V

    .line 314
    iget-object v0, p0, Lcom/airbnb/android/fragments/ContactsFragment$3;->val$progressDialog:Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;->dismiss()V

    .line 315
    return-void
.end method

.method public onResponse(Lcom/airbnb/android/fragments/ContactsFragment$SendReferralsToServerRequest;)V
    .registers 8
    .param p1, "response"    # Lcom/airbnb/android/fragments/ContactsFragment$SendReferralsToServerRequest;

    .prologue
    .line 303
    const-string/jumbo v0, "success"

    iget-object v1, p0, Lcom/airbnb/android/fragments/ContactsFragment$3;->this$0:Lcom/airbnb/android/fragments/ContactsFragment;

    # getter for: Lcom/airbnb/android/fragments/ContactsFragment;->mSelectedContacts:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/airbnb/android/fragments/ContactsFragment;->access$000(Lcom/airbnb/android/fragments/ContactsFragment;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/airbnb/android/fragments/ContactsFragment$3;->this$0:Lcom/airbnb/android/fragments/ContactsFragment;

    # getter for: Lcom/airbnb/android/fragments/ContactsFragment;->mSelectedRecommendedContacts:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/airbnb/android/fragments/ContactsFragment;->access$100(Lcom/airbnb/android/fragments/ContactsFragment;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/airbnb/android/analytics/ReferralsAnalytics;->trackSendInvites(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    iget-object v0, p0, Lcom/airbnb/android/fragments/ContactsFragment$3;->val$progressDialog:Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;

    const v1, 0x7f0e0626

    const/4 v2, 0x0

    const v3, 0x7f020129

    iget-object v4, p0, Lcom/airbnb/android/fragments/ContactsFragment$3;->this$0:Lcom/airbnb/android/fragments/ContactsFragment;

    invoke-virtual {v4}, Lcom/airbnb/android/fragments/ContactsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0008

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;->onProgressComplete(IIII)V

    .line 307
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 299
    check-cast p1, Lcom/airbnb/android/fragments/ContactsFragment$SendReferralsToServerRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/fragments/ContactsFragment$3;->onResponse(Lcom/airbnb/android/fragments/ContactsFragment$SendReferralsToServerRequest;)V

    return-void
.end method
