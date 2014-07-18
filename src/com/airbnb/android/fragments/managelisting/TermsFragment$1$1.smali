.class Lcom/airbnb/android/fragments/managelisting/TermsFragment$1$1;
.super Ljava/lang/Object;
.source "TermsFragment.java"

# interfaces
.implements Lcom/airbnb/android/requests/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/managelisting/TermsFragment$1;->onClick(Landroid/view/View;)V
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
        "Lcom/airbnb/android/requests/CancellationPoliciesRequest;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/airbnb/android/fragments/managelisting/TermsFragment$1;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/managelisting/TermsFragment$1;)V
    .registers 2

    .prologue
    .line 98
    iput-object p1, p0, Lcom/airbnb/android/fragments/managelisting/TermsFragment$1$1;->this$1:Lcom/airbnb/android/fragments/managelisting/TermsFragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 3
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/TermsFragment$1$1;->this$1:Lcom/airbnb/android/fragments/managelisting/TermsFragment$1;

    iget-object v0, v0, Lcom/airbnb/android/fragments/managelisting/TermsFragment$1;->this$0:Lcom/airbnb/android/fragments/managelisting/TermsFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/managelisting/TermsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 112
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/TermsFragment$1$1;->this$1:Lcom/airbnb/android/fragments/managelisting/TermsFragment$1;

    iget-object v0, v0, Lcom/airbnb/android/fragments/managelisting/TermsFragment$1;->this$0:Lcom/airbnb/android/fragments/managelisting/TermsFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/managelisting/TermsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/android/requests/AirbnbRequest;->toastGenericVolleyError(Landroid/content/Context;)V

    .line 114
    :cond_15
    return-void
.end method

.method public onResponse(Lcom/airbnb/android/requests/CancellationPoliciesRequest;)V
    .registers 6
    .param p1, "response"    # Lcom/airbnb/android/requests/CancellationPoliciesRequest;

    .prologue
    .line 102
    const v1, 0x7f0e051e

    iget-object v2, p0, Lcom/airbnb/android/fragments/managelisting/TermsFragment$1$1;->this$1:Lcom/airbnb/android/fragments/managelisting/TermsFragment$1;

    iget-object v2, v2, Lcom/airbnb/android/fragments/managelisting/TermsFragment$1;->this$0:Lcom/airbnb/android/fragments/managelisting/TermsFragment;

    # getter for: Lcom/airbnb/android/fragments/managelisting/TermsFragment;->mListing:Lcom/airbnb/android/models/Listing;
    invoke-static {v2}, Lcom/airbnb/android/fragments/managelisting/TermsFragment;->access$000(Lcom/airbnb/android/fragments/managelisting/TermsFragment;)Lcom/airbnb/android/models/Listing;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/android/models/Listing;->getCancellationPolicyKey()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/airbnb/android/requests/CancellationPoliciesRequest;->items:Ljava/util/ArrayList;

    invoke-static {v1, v2, v3}, Lcom/airbnb/android/fragments/managelisting/CancellationPolicyDialogFragment;->newInstance(ILjava/lang/String;Ljava/util/ArrayList;)Lcom/airbnb/android/fragments/managelisting/CancellationPolicyDialogFragment;

    move-result-object v0

    .line 104
    .local v0, "f":Lcom/airbnb/android/fragments/managelisting/CancellationPolicyDialogFragment;
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/TermsFragment$1$1;->this$1:Lcom/airbnb/android/fragments/managelisting/TermsFragment$1;

    iget-object v1, v1, Lcom/airbnb/android/fragments/managelisting/TermsFragment$1;->this$0:Lcom/airbnb/android/fragments/managelisting/TermsFragment;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/android/fragments/managelisting/CancellationPolicyDialogFragment;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 106
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/TermsFragment$1$1;->this$1:Lcom/airbnb/android/fragments/managelisting/TermsFragment$1;

    iget-object v1, v1, Lcom/airbnb/android/fragments/managelisting/TermsFragment$1;->this$0:Lcom/airbnb/android/fragments/managelisting/TermsFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/managelisting/TermsFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/android/fragments/managelisting/CancellationPolicyDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 107
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 98
    check-cast p1, Lcom/airbnb/android/requests/CancellationPoliciesRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/fragments/managelisting/TermsFragment$1$1;->onResponse(Lcom/airbnb/android/requests/CancellationPoliciesRequest;)V

    return-void
.end method
