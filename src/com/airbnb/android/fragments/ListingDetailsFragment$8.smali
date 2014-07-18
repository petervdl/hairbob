.class Lcom/airbnb/android/fragments/ListingDetailsFragment$8;
.super Ljava/lang/Object;
.source "ListingDetailsFragment.java"

# interfaces
.implements Lcom/airbnb/android/requests/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/ListingDetailsFragment;->updateSocialConnections(Landroid/widget/FrameLayout;)V
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
.field final synthetic this$0:Lcom/airbnb/android/fragments/ListingDetailsFragment;

.field final synthetic val$host:Lcom/airbnb/android/models/User;

.field final synthetic val$view:Landroid/widget/FrameLayout;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/ListingDetailsFragment;Lcom/airbnb/android/models/User;Landroid/widget/FrameLayout;)V
    .registers 4

    .prologue
    .line 505
    iput-object p1, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment$8;->this$0:Lcom/airbnb/android/fragments/ListingDetailsFragment;

    iput-object p2, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment$8;->val$host:Lcom/airbnb/android/models/User;

    iput-object p3, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment$8;->val$view:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 4
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 529
    iget-object v0, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment$8;->val$view:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 530
    return-void
.end method

.method public onResponse(Lcom/airbnb/android/requests/SocialConnectionsRequest;)V
    .registers 7
    .param p1, "response"    # Lcom/airbnb/android/requests/SocialConnectionsRequest;

    .prologue
    const/4 v4, 0x0

    .line 508
    iget v1, p1, Lcom/airbnb/android/requests/SocialConnectionsRequest;->connectionsCount:I

    if-lez v1, :cond_32

    .line 509
    iget-object v1, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment$8;->val$host:Lcom/airbnb/android/models/User;

    invoke-virtual {v1}, Lcom/airbnb/android/models/User;->getFirstName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/airbnb/android/requests/SocialConnectionsRequest;->targetUserName:Ljava/lang/String;

    .line 510
    iget-object v1, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment$8;->val$view:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 511
    new-instance v0, Lcom/airbnb/android/views/SocialConnectionsCard;

    iget-object v1, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment$8;->this$0:Lcom/airbnb/android/fragments/ListingDetailsFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/ListingDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment$8;->this$0:Lcom/airbnb/android/fragments/ListingDetailsFragment;

    # getter for: Lcom/airbnb/android/fragments/ListingDetailsFragment;->mSocialConnectionsRequest:Lcom/airbnb/android/requests/SocialConnectionsRequest;
    invoke-static {v2}, Lcom/airbnb/android/fragments/ListingDetailsFragment;->access$1200(Lcom/airbnb/android/fragments/ListingDetailsFragment;)Lcom/airbnb/android/requests/SocialConnectionsRequest;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/airbnb/android/views/SocialConnectionsCard;-><init>(Landroid/content/Context;Lcom/airbnb/android/requests/SocialConnectionsRequest;ZZ)V

    .line 512
    .local v0, "connectionsCard":Lcom/airbnb/android/views/SocialConnectionsCard;
    iget-object v1, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment$8;->val$view:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 514
    new-instance v1, Lcom/airbnb/android/fragments/ListingDetailsFragment$8$1;

    invoke-direct {v1, p0}, Lcom/airbnb/android/fragments/ListingDetailsFragment$8$1;-><init>(Lcom/airbnb/android/fragments/ListingDetailsFragment$8;)V

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/SocialConnectionsCard;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 525
    .end local v0    # "connectionsCard":Lcom/airbnb/android/views/SocialConnectionsCard;
    :goto_31
    return-void

    .line 523
    :cond_32
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/airbnb/android/fragments/ListingDetailsFragment$8;->onErrorResponse(Lcom/android/volley/VolleyError;)V

    goto :goto_31
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 505
    check-cast p1, Lcom/airbnb/android/requests/SocialConnectionsRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/fragments/ListingDetailsFragment$8;->onResponse(Lcom/airbnb/android/requests/SocialConnectionsRequest;)V

    return-void
.end method
