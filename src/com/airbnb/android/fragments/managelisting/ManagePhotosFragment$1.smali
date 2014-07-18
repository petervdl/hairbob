.class Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment$1;
.super Ljava/lang/Object;
.source "ManagePhotosFragment.java"

# interfaces
.implements Lcom/airbnb/android/requests/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;->onCreate(Landroid/os/Bundle;)V
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
        "Lcom/airbnb/android/requests/ProPhotoRequest;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;)V
    .registers 2

    .prologue
    .line 161
    iput-object p1, p0, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment$1;->this$0:Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 2
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 174
    return-void
.end method

.method public onResponse(Lcom/airbnb/android/requests/ProPhotoRequest;)V
    .registers 4
    .param p1, "response"    # Lcom/airbnb/android/requests/ProPhotoRequest;

    .prologue
    .line 165
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment$1;->this$0:Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 166
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment$1;->this$0:Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;

    # getter for: Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;->mListing:Lcom/airbnb/android/models/Listing;
    invoke-static {v0}, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;->access$000(Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;)Lcom/airbnb/android/models/Listing;

    move-result-object v0

    invoke-virtual {p1}, Lcom/airbnb/android/requests/ProPhotoRequest;->getProPhotoStatus()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/models/Listing;->setProPhotoStatus(Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment$1;->this$0:Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->supportInvalidateOptionsMenu()V

    .line 169
    :cond_1e
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 161
    check-cast p1, Lcom/airbnb/android/requests/ProPhotoRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment$1;->onResponse(Lcom/airbnb/android/requests/ProPhotoRequest;)V

    return-void
.end method
