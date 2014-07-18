.class Lcom/airbnb/android/fragments/ProPhotographyFragment$3;
.super Ljava/lang/Object;
.source "ProPhotographyFragment.java"

# interfaces
.implements Lcom/airbnb/android/requests/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/ProPhotographyFragment;->showSelectListingDialog()V
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
        "Lcom/airbnb/android/requests/MySpacesRequest;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/ProPhotographyFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/ProPhotographyFragment;)V
    .registers 2

    .prologue
    .line 141
    iput-object p1, p0, Lcom/airbnb/android/fragments/ProPhotographyFragment$3;->this$0:Lcom/airbnb/android/fragments/ProPhotographyFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 3
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 152
    iget-object v0, p0, Lcom/airbnb/android/fragments/ProPhotographyFragment$3;->this$0:Lcom/airbnb/android/fragments/ProPhotographyFragment;

    # getter for: Lcom/airbnb/android/fragments/ProPhotographyFragment;->mLoadingProgressDialog:Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;
    invoke-static {v0}, Lcom/airbnb/android/fragments/ProPhotographyFragment;->access$800(Lcom/airbnb/android/fragments/ProPhotographyFragment;)Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 153
    iget-object v0, p0, Lcom/airbnb/android/fragments/ProPhotographyFragment$3;->this$0:Lcom/airbnb/android/fragments/ProPhotographyFragment;

    # getter for: Lcom/airbnb/android/fragments/ProPhotographyFragment;->mLoadingProgressDialog:Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;
    invoke-static {v0}, Lcom/airbnb/android/fragments/ProPhotographyFragment;->access$800(Lcom/airbnb/android/fragments/ProPhotographyFragment;)Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;->dismiss()V

    .line 155
    :cond_11
    iget-object v0, p0, Lcom/airbnb/android/fragments/ProPhotographyFragment$3;->this$0:Lcom/airbnb/android/fragments/ProPhotographyFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/ProPhotographyFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/android/requests/AirbnbRequest;->toastGenericVolleyError(Landroid/content/Context;)V

    .line 156
    return-void
.end method

.method public onResponse(Lcom/airbnb/android/requests/MySpacesRequest;)V
    .registers 4
    .param p1, "response"    # Lcom/airbnb/android/requests/MySpacesRequest;

    .prologue
    .line 144
    iget-object v0, p0, Lcom/airbnb/android/fragments/ProPhotographyFragment$3;->this$0:Lcom/airbnb/android/fragments/ProPhotographyFragment;

    # getter for: Lcom/airbnb/android/fragments/ProPhotographyFragment;->mLoadingProgressDialog:Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;
    invoke-static {v0}, Lcom/airbnb/android/fragments/ProPhotographyFragment;->access$800(Lcom/airbnb/android/fragments/ProPhotographyFragment;)Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 145
    iget-object v0, p0, Lcom/airbnb/android/fragments/ProPhotographyFragment$3;->this$0:Lcom/airbnb/android/fragments/ProPhotographyFragment;

    # getter for: Lcom/airbnb/android/fragments/ProPhotographyFragment;->mLoadingProgressDialog:Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;
    invoke-static {v0}, Lcom/airbnb/android/fragments/ProPhotographyFragment;->access$800(Lcom/airbnb/android/fragments/ProPhotographyFragment;)Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;->dismiss()V

    .line 147
    :cond_11
    iget-object v0, p0, Lcom/airbnb/android/fragments/ProPhotographyFragment$3;->this$0:Lcom/airbnb/android/fragments/ProPhotographyFragment;

    iget-object v1, p1, Lcom/airbnb/android/requests/MySpacesRequest;->listings:Ljava/util/ArrayList;

    # invokes: Lcom/airbnb/android/fragments/ProPhotographyFragment;->showSelectListingDialogWithData(Ljava/util/ArrayList;)V
    invoke-static {v0, v1}, Lcom/airbnb/android/fragments/ProPhotographyFragment;->access$900(Lcom/airbnb/android/fragments/ProPhotographyFragment;Ljava/util/ArrayList;)V

    .line 148
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 141
    check-cast p1, Lcom/airbnb/android/requests/MySpacesRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/fragments/ProPhotographyFragment$3;->onResponse(Lcom/airbnb/android/requests/MySpacesRequest;)V

    return-void
.end method
