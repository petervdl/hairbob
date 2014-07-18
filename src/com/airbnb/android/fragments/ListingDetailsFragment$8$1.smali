.class Lcom/airbnb/android/fragments/ListingDetailsFragment$8$1;
.super Ljava/lang/Object;
.source "ListingDetailsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/ListingDetailsFragment$8;->onResponse(Lcom/airbnb/android/requests/SocialConnectionsRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/airbnb/android/fragments/ListingDetailsFragment$8;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/ListingDetailsFragment$8;)V
    .registers 2

    .prologue
    .line 514
    iput-object p1, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment$8$1;->this$1:Lcom/airbnb/android/fragments/ListingDetailsFragment$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 518
    iget-object v0, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment$8$1;->this$1:Lcom/airbnb/android/fragments/ListingDetailsFragment$8;

    iget-object v0, v0, Lcom/airbnb/android/fragments/ListingDetailsFragment$8;->this$0:Lcom/airbnb/android/fragments/ListingDetailsFragment;

    # getter for: Lcom/airbnb/android/fragments/ListingDetailsFragment;->mSocialConnectionsRequest:Lcom/airbnb/android/requests/SocialConnectionsRequest;
    invoke-static {v0}, Lcom/airbnb/android/fragments/ListingDetailsFragment;->access$1200(Lcom/airbnb/android/fragments/ListingDetailsFragment;)Lcom/airbnb/android/requests/SocialConnectionsRequest;

    move-result-object v0

    iget-object v0, v0, Lcom/airbnb/android/requests/SocialConnectionsRequest;->connections:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment$8$1;->this$1:Lcom/airbnb/android/fragments/ListingDetailsFragment$8;

    iget-object v1, v1, Lcom/airbnb/android/fragments/ListingDetailsFragment$8;->val$host:Lcom/airbnb/android/models/User;

    invoke-virtual {v1}, Lcom/airbnb/android/models/User;->getFirstName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/airbnb/android/fragments/managelisting/SocialConnectionsDialogFragment;->newInstance(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/airbnb/android/fragments/managelisting/SocialConnectionsDialogFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment$8$1;->this$1:Lcom/airbnb/android/fragments/ListingDetailsFragment$8;

    iget-object v1, v1, Lcom/airbnb/android/fragments/ListingDetailsFragment$8;->this$0:Lcom/airbnb/android/fragments/ListingDetailsFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/ListingDetailsFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/android/fragments/managelisting/SocialConnectionsDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 519
    return-void
.end method
