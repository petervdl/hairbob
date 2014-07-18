.class Lcom/airbnb/android/activities/DebugMenuActivity$4;
.super Ljava/lang/Object;
.source "DebugMenuActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/activities/DebugMenuActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/activities/DebugMenuActivity;


# direct methods
.method constructor <init>(Lcom/airbnb/android/activities/DebugMenuActivity;)V
    .registers 2

    .prologue
    .line 118
    iput-object p1, p0, Lcom/airbnb/android/activities/DebugMenuActivity$4;->this$0:Lcom/airbnb/android/activities/DebugMenuActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 11
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 122
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 125
    .local v0, "context":Landroid/content/Context;
    iget-object v4, p0, Lcom/airbnb/android/activities/DebugMenuActivity$4;->this$0:Lcom/airbnb/android/activities/DebugMenuActivity;

    # getter for: Lcom/airbnb/android/activities/DebugMenuActivity;->mAirbnbApi:Lcom/airbnb/android/AirbnbApi;
    invoke-static {v4}, Lcom/airbnb/android/activities/DebugMenuActivity;->access$100(Lcom/airbnb/android/activities/DebugMenuActivity;)Lcom/airbnb/android/AirbnbApi;

    move-result-object v4

    invoke-virtual {v4}, Lcom/airbnb/android/AirbnbApi;->getCurrentUser()Lcom/airbnb/android/models/User;

    move-result-object v1

    .line 126
    .local v1, "currentUser":Lcom/airbnb/android/models/User;
    if-eqz v1, :cond_29

    .line 127
    invoke-static {v0}, Lcom/airbnb/android/utils/DebugSettings;->getInstance(Landroid/content/Context;)Lcom/airbnb/android/utils/DebugSettings;

    move-result-object v4

    invoke-virtual {v1}, Lcom/airbnb/android/models/User;->getId()J

    move-result-wide v5

    invoke-virtual {v1}, Lcom/airbnb/android/models/User;->getName()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/airbnb/android/activities/DebugMenuActivity$4;->this$0:Lcom/airbnb/android/activities/DebugMenuActivity;

    # getter for: Lcom/airbnb/android/activities/DebugMenuActivity;->mAirbnbApi:Lcom/airbnb/android/AirbnbApi;
    invoke-static {v8}, Lcom/airbnb/android/activities/DebugMenuActivity;->access$100(Lcom/airbnb/android/activities/DebugMenuActivity;)Lcom/airbnb/android/AirbnbApi;

    move-result-object v8

    invoke-virtual {v8}, Lcom/airbnb/android/AirbnbApi;->getAccessToken()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/airbnb/android/utils/DebugSettings;->addAuthorizedUser(JLjava/lang/String;Ljava/lang/String;)V

    .line 130
    :cond_29
    invoke-static {v0}, Lcom/airbnb/android/utils/DebugSettings;->getInstance(Landroid/content/Context;)Lcom/airbnb/android/utils/DebugSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/airbnb/android/utils/DebugSettings;->getAuthorizedUsers()Ljava/util/List;

    move-result-object v3

    .line 131
    .local v3, "users":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/utils/DebugSettings$AuthorizedAccount;>;"
    invoke-static {v3}, Lcom/airbnb/android/fragments/AccountSelectorDialogFragment;->newInstance(Ljava/util/List;)Lcom/airbnb/android/fragments/AccountSelectorDialogFragment;

    move-result-object v2

    .line 132
    .local v2, "fragment":Lcom/airbnb/android/fragments/AccountSelectorDialogFragment;
    new-instance v4, Lcom/airbnb/android/activities/DebugMenuActivity$4$1;

    invoke-direct {v4, p0, v0}, Lcom/airbnb/android/activities/DebugMenuActivity$4$1;-><init>(Lcom/airbnb/android/activities/DebugMenuActivity$4;Landroid/content/Context;)V

    invoke-virtual {v2, v4}, Lcom/airbnb/android/fragments/AccountSelectorDialogFragment;->setListener(Lcom/airbnb/android/fragments/AccountSelectorDialogFragment$OnAccountSelectedListener;)V

    .line 192
    iget-object v4, p0, Lcom/airbnb/android/activities/DebugMenuActivity$4;->this$0:Lcom/airbnb/android/activities/DebugMenuActivity;

    invoke-virtual {v4}, Lcom/airbnb/android/activities/DebugMenuActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v4

    const-string/jumbo v5, "switch_account"

    invoke-virtual {v2, v4, v5}, Lcom/airbnb/android/fragments/AccountSelectorDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 193
    return-void
.end method
