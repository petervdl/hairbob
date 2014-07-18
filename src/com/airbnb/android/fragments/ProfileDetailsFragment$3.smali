.class Lcom/airbnb/android/fragments/ProfileDetailsFragment$3;
.super Ljava/lang/Object;
.source "ProfileDetailsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/ProfileDetailsFragment;->updateSocialConnections(Lcom/airbnb/android/requests/SocialConnectionsRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/ProfileDetailsFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/ProfileDetailsFragment;)V
    .registers 2

    .prologue
    .line 138
    iput-object p1, p0, Lcom/airbnb/android/fragments/ProfileDetailsFragment$3;->this$0:Lcom/airbnb/android/fragments/ProfileDetailsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 142
    iget-object v0, p0, Lcom/airbnb/android/fragments/ProfileDetailsFragment$3;->this$0:Lcom/airbnb/android/fragments/ProfileDetailsFragment;

    # getter for: Lcom/airbnb/android/fragments/ProfileDetailsFragment;->mSocialConnectionsRequest:Lcom/airbnb/android/requests/SocialConnectionsRequest;
    invoke-static {v0}, Lcom/airbnb/android/fragments/ProfileDetailsFragment;->access$200(Lcom/airbnb/android/fragments/ProfileDetailsFragment;)Lcom/airbnb/android/requests/SocialConnectionsRequest;

    move-result-object v0

    iget-object v0, v0, Lcom/airbnb/android/requests/SocialConnectionsRequest;->connections:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/airbnb/android/fragments/ProfileDetailsFragment$3;->this$0:Lcom/airbnb/android/fragments/ProfileDetailsFragment;

    # getter for: Lcom/airbnb/android/fragments/ProfileDetailsFragment;->mUser:Lcom/airbnb/android/models/User;
    invoke-static {v1}, Lcom/airbnb/android/fragments/ProfileDetailsFragment;->access$300(Lcom/airbnb/android/fragments/ProfileDetailsFragment;)Lcom/airbnb/android/models/User;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/android/models/User;->getFirstName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/airbnb/android/fragments/managelisting/SocialConnectionsDialogFragment;->newInstance(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/airbnb/android/fragments/managelisting/SocialConnectionsDialogFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/android/fragments/ProfileDetailsFragment$3;->this$0:Lcom/airbnb/android/fragments/ProfileDetailsFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/ProfileDetailsFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "social_connections"

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/android/fragments/managelisting/SocialConnectionsDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 143
    return-void
.end method
