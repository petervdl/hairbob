.class Lcom/airbnb/android/fragments/ProfileDetailsFragment$2;
.super Ljava/lang/Object;
.source "ProfileDetailsFragment.java"

# interfaces
.implements Lcom/airbnb/android/requests/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/ProfileDetailsFragment;->fetchSocialConnectionsIfNeeded()V
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
        "Lcom/airbnb/android/requests/SocialConnectionsRequest;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/ProfileDetailsFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/ProfileDetailsFragment;)V
    .registers 2

    .prologue
    .line 111
    iput-object p1, p0, Lcom/airbnb/android/fragments/ProfileDetailsFragment$2;->this$0:Lcom/airbnb/android/fragments/ProfileDetailsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 4
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/airbnb/android/fragments/ProfileDetailsFragment$2;->this$0:Lcom/airbnb/android/fragments/ProfileDetailsFragment;

    # getter for: Lcom/airbnb/android/fragments/ProfileDetailsFragment;->mSocialConnectionsCardHolder:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/airbnb/android/fragments/ProfileDetailsFragment;->access$100(Lcom/airbnb/android/fragments/ProfileDetailsFragment;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 124
    return-void
.end method

.method public onResponse(Lcom/airbnb/android/requests/SocialConnectionsRequest;)V
    .registers 4
    .param p1, "response"    # Lcom/airbnb/android/requests/SocialConnectionsRequest;

    .prologue
    .line 114
    iget v0, p1, Lcom/airbnb/android/requests/SocialConnectionsRequest;->connectionsCount:I

    if-lez v0, :cond_a

    .line 115
    iget-object v0, p0, Lcom/airbnb/android/fragments/ProfileDetailsFragment$2;->this$0:Lcom/airbnb/android/fragments/ProfileDetailsFragment;

    # invokes: Lcom/airbnb/android/fragments/ProfileDetailsFragment;->updateSocialConnections(Lcom/airbnb/android/requests/SocialConnectionsRequest;)V
    invoke-static {v0, p1}, Lcom/airbnb/android/fragments/ProfileDetailsFragment;->access$000(Lcom/airbnb/android/fragments/ProfileDetailsFragment;Lcom/airbnb/android/requests/SocialConnectionsRequest;)V

    .line 119
    :goto_9
    return-void

    .line 117
    :cond_a
    iget-object v0, p0, Lcom/airbnb/android/fragments/ProfileDetailsFragment$2;->this$0:Lcom/airbnb/android/fragments/ProfileDetailsFragment;

    # getter for: Lcom/airbnb/android/fragments/ProfileDetailsFragment;->mSocialConnectionsCardHolder:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/airbnb/android/fragments/ProfileDetailsFragment;->access$100(Lcom/airbnb/android/fragments/ProfileDetailsFragment;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_9
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 111
    check-cast p1, Lcom/airbnb/android/requests/SocialConnectionsRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/fragments/ProfileDetailsFragment$2;->onResponse(Lcom/airbnb/android/requests/SocialConnectionsRequest;)V

    return-void
.end method
