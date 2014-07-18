.class Lcom/airbnb/android/fragments/ListingDetailsFragment$27;
.super Ljava/lang/Object;
.source "ListingDetailsFragment.java"

# interfaces
.implements Lcom/airbnb/android/requests/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/ListingDetailsFragment;->updateHostProfileInfo(Landroid/widget/TextView;Landroid/widget/TextView;)V
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
        "Lcom/airbnb/android/requests/UserRequest;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/ListingDetailsFragment;

.field final synthetic val$location:Landroid/widget/TextView;

.field final synthetic val$userAbout:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/ListingDetailsFragment;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .registers 4

    .prologue
    .line 1075
    iput-object p1, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment$27;->this$0:Lcom/airbnb/android/fragments/ListingDetailsFragment;

    iput-object p2, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment$27;->val$location:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment$27;->val$userAbout:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 2
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 1092
    return-void
.end method

.method public onResponse(Lcom/airbnb/android/requests/UserRequest;)V
    .registers 4
    .param p1, "response"    # Lcom/airbnb/android/requests/UserRequest;

    .prologue
    .line 1079
    iget-object v0, p1, Lcom/airbnb/android/requests/UserRequest;->user:Lcom/airbnb/android/models/User;

    if-eqz v0, :cond_22

    .line 1080
    iget-object v0, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment$27;->val$location:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/airbnb/android/requests/UserRequest;->user:Lcom/airbnb/android/models/User;

    invoke-virtual {v1}, Lcom/airbnb/android/models/User;->getLocation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1081
    iget-object v0, p1, Lcom/airbnb/android/requests/UserRequest;->user:Lcom/airbnb/android/models/User;

    invoke-virtual {v0}, Lcom/airbnb/android/models/User;->getAbout()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 1082
    iget-object v0, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment$27;->val$userAbout:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1087
    :cond_22
    :goto_22
    return-void

    .line 1084
    :cond_23
    iget-object v0, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment$27;->val$userAbout:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/airbnb/android/requests/UserRequest;->user:Lcom/airbnb/android/models/User;

    invoke-virtual {v1}, Lcom/airbnb/android/models/User;->getAbout()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_22
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1075
    check-cast p1, Lcom/airbnb/android/requests/UserRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/fragments/ListingDetailsFragment$27;->onResponse(Lcom/airbnb/android/requests/UserRequest;)V

    return-void
.end method
